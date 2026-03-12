# Machine Learning Coursework

> Four assignments completed during the Machine Learning course at **IMC University of Applied Sciences Krems**.

**Author:** Maximilian Knapp · Data Science Student

---

## Topics Covered

- Decision Trees
- Classification Algorithms (SVM, KNN, Random Forest, AdaBoost, XGBoost)
- Clustering (K-Means, Hierarchical, DBSCAN)
- Neural Networks / Deep Learning (PyTorch & TensorFlow)

---

## Repository Structure

```
machine-learning-projects/
├── decision_trees/
│   ├── seeds_analysis.Rmd
│   ├── seeds.R
│   └── seeds.csv
├── classification_eeg/
│   ├── eeg_eyelid_training.csv
│   └── eeg_eyelid_test.csv
├── clustering/
│   ├── Mobile_phone_picture.Rmd
│   ├── Mobile_phone_picture.html
│   ├── clustering_analysis_drilling.Rmd
│   ├── clustering_analysis_drilling.html
│   └── drilling.csv
├── neural_networks/
│   ├── dry_bean_classification_pytorch_Maximilian.ipynb
│   ├── dry_bean_classification_tensorflow_Maxmilian.ipynb
│   └── Lecture_10_Dry_Bean_Dataset.csv
└── README.md
```

---

## 1. Decision Trees — Seed Classification

**Goal:** Distinguish three seed types based on geometric measurements (area, perimeter, length, width, shape features).

**Dataset:** `seeds.csv`

**Workflow:**
1. Exploratory Data Analysis (EDA)
2. Train/Test split (80/20)
3. Train three model variants:
   - Decision tree with default stopping criteria
   - Complete decision tree (no stopping rule)
   - Pruned decision tree
4. Evaluate on test set

**Metrics:** Accuracy · Precision · Recall · F1-Score · Confusion Matrix

---

## 2. EEG Classification — Eyelid Detection

**Goal:** Predict whether a patient's eyelids are open (`0`) or closed (`1`) from 16 numerical EEG sensor readings.

**Dataset:** `eeg_eyelid_training.csv` / `eeg_eyelid_test.csv`

**Models compared:**

| Model | Type |
|---|---|
| Decision Tree | Tree-based |
| Support Vector Machine (SVM) | Kernel-based |
| K-Nearest Neighbors (KNN) | Instance-based |
| Random Forest | Ensemble |
| AdaBoost | Boosting |
| XGBoost | Boosting |

**Metrics:** Accuracy · Precision · Recall · F1-Score

---

## 3. Clustering

### Task 1 — Image Color Reduction

**File:** `Mobile_phone_picture.Rmd`

Reduce the number of RGB colors in a smartphone photo using K-Means clustering. The optimal number of clusters K is determined via the **Elbow Method** (WSS plot).

**Outputs:** Original image · WSS elbow plot · Reconstructed images at various K

### Task 2 — Drilling Machine State Detection

**Files:** `clustering_analysis_drilling.Rmd` · `drilling.csv`

A drilling machine operates in several unknown states. 400 unlabelled observations with two variables are analysed to identify the number of states and assign each observation to a cluster.

**Methods:** K-Means · Hierarchical Clustering · DBSCAN

All three outcomes are compared to evaluate structural consistency.

---

## 4. Neural Networks — Dry Bean Classification

**Goal:** Train a feed-forward neural network to classify bean types from the Dry Bean dataset.

**Dataset:** `Lecture_10_Dry_Bean_Dataset.csv`

**Pipeline:**
1. Exploratory Data Analysis
2. Data preprocessing & normalisation
3. Train/Test split (80/20)
4. Convert to tensors
5. Train and evaluate neural network

**Implementations:** PyTorch (`dry_bean_classification_pytorch_Maximilian.ipynb`) · TensorFlow (`dry_bean_classification_tensorflow_Maxmilian.ipynb`)

---

## Technologies

`R` · `Python` · `PyTorch` · `TensorFlow` · `scikit-learn` · `RMarkdown` · `Jupyter Notebook`