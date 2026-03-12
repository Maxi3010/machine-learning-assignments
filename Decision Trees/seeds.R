# Load required libraries
library(ggplot2)
library(rpart)
library(rpart.plot)
library(caret)
library(gridExtra)

# Set seed for reproducibility
set.seed(123)

# Read the dataset
seeds <- read.csv("seeds.csv", header = TRUE)

# Convert Class to factor
seeds$Class <- factor(seeds$Class)

# Check structure and summary
str(seeds)
summary(seeds)

# Check for missing values
print(colSums(is.na(seeds)))

# Impute missing values (replace with median)
seeds$Eccentricity[is.na(seeds$Eccentricity)] <- median(seeds$Eccentricity, na.rm = TRUE)
seeds$Solidity[is.na(seeds$Solidity)] <- median(seeds$Solidity, na.rm = TRUE)

# Verify no missing values remain
print(colSums(is.na(seeds)))

# Split data into training (80%) and testing (20%)
trainIndex <- createDataPartition(seeds$Class, p = 0.8, list = FALSE)
trainData <- seeds[trainIndex, ]
testData <- seeds[-trainIndex, ]

# ============================
# FULL FEATURE ANALYSIS
# ============================

# Default Decision Tree
tree_default <- rpart(Class ~ ., data = trainData, method = "class")
rpart.plot(tree_default, main = "Default Decision Tree (Full Features)")

# Fully Grown Decision Tree
tree_full <- rpart(Class ~ ., data = trainData, method = "class", control = rpart.control(minsplit = 2, cp = 0))
rpart.plot(tree_full, main = "Fully Grown Decision Tree (Full Features)")

# Check complexity parameter (cp) for pruning
printcp(tree_full)

# Prune the tree using cp = 0.005 (adjust if needed)
tree_pruned <- prune(tree_full, cp = 0.005)
rpart.plot(tree_pruned, main = "Pruned Decision Tree (Full Features)")
print(tree_pruned)
summary(tree_pruned)

# Predict on test data
pred_pruned <- predict(tree_pruned, testData, type = "class")

# Convert actual and predicted to factors with matching levels
actual <- factor(testData$Class)
predicted <- factor(as.character(pred_pruned), levels = levels(actual))

# Compute confusion matrix
conf_matrix_full <- confusionMatrix(predicted, actual)
print(conf_matrix_full)

# ============================
# REDUCED FEATURE ANALYSIS (Using 3 Features: Area, Perimeter, Compactness)
# ============================

# Select only three features + Class
trainData_3 <- trainData[, c("Area", "Perimeter", "Compactness", "Class")]
testData_3 <- testData[, c("Area", "Perimeter", "Compactness", "Class")]

# Default Decision Tree (3 Features)
tree_default_3 <- rpart(Class ~ ., data = trainData_3, method = "class")
rpart.plot(tree_default_3, main = "Default Decision Tree (3 Features)")

# Fully Grown Decision Tree (3 Features)
tree_full_3 <- rpart(Class ~ ., data = trainData_3, method = "class", control = rpart.control(minsplit = 2, cp = 0))
rpart.plot(tree_full_3, main = "Fully Grown Decision Tree (3 Features)")

# Check complexity parameter (cp) for pruning
printcp(tree_full_3)

# Prune the tree using cp = 0.005
tree_pruned_3 <- prune(tree_full_3, cp = 0.005)
rpart.plot(tree_pruned_3, main = "Pruned Decision Tree (3 Features)")
print(tree_pruned_3)
summary(tree_pruned_3)

# Predict on test data
pred_pruned_3 <- predict(tree_pruned_3, testData_3, type = "class")

# Convert actual and predicted to factors with matching levels
actual_3 <- factor(testData_3$Class)
predicted_3 <- factor(as.character(pred_pruned_3), levels = levels(actual_3))

# Compute confusion matrix
conf_matrix_3 <- confusionMatrix(predicted_3, actual_3)
print(conf_matrix_3)

# ============================
# COMPARISON OF MODELS
# ============================

cat("\n===== COMPARISON OF MODELS =====\n")

# Print accuracy comparison
accuracy_full <- conf_matrix_full$overall["Accuracy"]
accuracy_3 <- conf_matrix_3$overall["Accuracy"]

cat("\nAccuracy (Full Feature Model):", round(accuracy_full * 100, 2), "%")
cat("\nAccuracy (Reduced Feature Model - 3 Features):", round(accuracy_3 * 100, 2), "%\n")

# Print Kappa comparison
kappa_full <- conf_matrix_full$overall["Kappa"]
kappa_3 <- conf_matrix_3$overall["Kappa"]

cat("\nKappa (Full Feature Model):", round(kappa_full, 3))
cat("\nKappa (Reduced Feature Model - 3 Features):", round(kappa_3, 3), "\n")

# ============================
# FINAL REMARKS
# ============================

cat("\n===== FINAL REMARKS =====\n")
cat("1. The full feature model has higher accuracy and better classification performance.\n")
cat("2. The reduced feature model (using only 3 features) is simpler but may have slightly lower accuracy.\n")
cat("3. If interpretability is important, the reduced model is preferable. Otherwise, the full feature model is recommended.\n")
