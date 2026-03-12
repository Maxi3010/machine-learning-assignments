# Machine Learning Coursework -- University Projects

This repository contains four machine learning assignments completed
during my Machine Learning course at **IMC University of Applied
Sciences Krems**.

The projects cover fundamental machine learning topics including:

-   Decision Trees
-   Classification Algorithms
-   Clustering Techniques
-   Neural Networks / Deep Learning

All assignments include code, results, and interpretation in the form of
RMarkdown reports or Jupyter notebooks.

------------------------------------------------------------------------

# Repository Structure

machine-learning-projects │ ├── decision_trees │ ├── seeds_analysis.Rmd
│ ├── seeds.R │ └── seeds.csv │ ├── classification_eeg │ ├──
eeg_eyelid_training.csv │ └── eeg_eyelid_test.csv │ ├── clustering │ ├──
Mobile_phone_picture.Rmd │ ├── Mobile_phone_picture.html │ ├──
clustering_analysis_drilling.Rmd │ ├── clustering_analysis_drilling.html
│ └── drilling.csv │ ├── neural_networks │ ├──
dry_bean_classification_pytorch_Maximilian.ipynb │ ├──
dry_bean_classification_tensorflow_Maxmilian.ipynb │ └──
Lecture_10_Dry_Bean_Dataset.csv │ └── README.md

------------------------------------------------------------------------

# 1. Decision Trees -- Seed Classification

## Objective

Train machine learning models capable of distinguishing three different
seed types based on geometric measurements.

## Dataset

Measurements include: - Area - Perimeter - Length - Width - Shape
features

File: seeds.csv

## Methodology

1.  Exploratory Data Analysis (EDA)
2.  Train/Test split (80/20)
3.  Train three models:
    -   Decision tree with default stopping criteria
    -   Complete decision tree (no stopping rule)
    -   Pruned decision tree
4.  Evaluate models using the test dataset.

## Evaluation Metrics

-   Confusion Matrix
-   Accuracy
-   Precision
-   Recall
-   F1-score

------------------------------------------------------------------------

# 2. EEG Classification -- Eyelid Detection

## Objective

Predict whether a patient's eyelids are open or closed based on EEG
sensor measurements.

Label definition: 0 = open eyelids\
1 = closed eyelids

## Dataset

-   16 numerical EEG features
-   1 label column

Files: - eeg_eyelid_training.csv - eeg_eyelid_test.csv

## Models Implemented

-   Decision Trees
-   Support Vector Machines (SVM)
-   K-Nearest Neighbors (KNN)
-   Random Forest
-   AdaBoost
-   XGBoost

Evaluation metrics: - Accuracy - Precision - Recall - F1 Score

------------------------------------------------------------------------

# 3. Clustering

This assignment contains two clustering tasks.

## Task 1 -- Image Color Reduction using K-Means

File: Mobile_phone_picture.Rmd

Objective: Reduce the number of RGB colors in an image using K-Means
clustering.

Workflow: 1. Take a picture with a smartphone 2. Resize the image
(e.g. 256×256) 3. Apply K-Means clustering 4. Use the Elbow Method to
determine optimal K

Outputs: - Original image - WSS elbow plot - Reconstructed images -
Interpretation

------------------------------------------------------------------------

## Task 2 -- Drilling Machine State Detection

Files: - clustering_analysis_drilling.Rmd - drilling.csv

Problem: A drilling machine operates in several unknown operational
states. Engineers collected 400 observations with two variables but
without labels.

Goal: 1. Identify the number of machine states 2. Assign each
observation to a cluster

Methods used: - K-Means - Hierarchical Clustering - DBSCAN

All clustering outcomes are compared to analyze whether they produce
similar cluster structures.

------------------------------------------------------------------------

# 4. Neural Networks -- Dry Bean Classification

Objective: Train a feed-forward neural network to classify bean types
using the Dry Bean dataset.

Dataset: Lecture_10_Dry_Bean_Dataset.csv

Workflow: 1. Exploratory Data Analysis 2. Data preprocessing 3.
Train/Test split (80/20) 4. Convert dataset to tensors 5. Train neural
network models

Implementations: - PyTorch - TensorFlow

Files: - dry_bean_classification_pytorch_Maximilian.ipynb -
dry_bean_classification_tensorflow_Maxmilian.ipynb

------------------------------------------------------------------------

# Technologies Used

-   R
-   Python
-   PyTorch
-   TensorFlow
-   RMarkdown
-   Jupyter Notebook
-   Machine Learning Libraries

------------------------------------------------------------------------

# Author

Maximilian Knapp\
Data Science Student\
IMC University of Applied Sciences Krems
