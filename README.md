Machine Learning Coursework – University Projects

This repository contains four machine learning assignments completed during my Machine Learning course at IMC University of Applied Sciences Krems.

The projects cover fundamental machine learning topics including:

Decision Trees

Classification Algorithms

Clustering Techniques

Neural Networks / Deep Learning

All assignments include code, results, and interpretation in the form of RMarkdown reports or Jupyter notebooks.

Repository Structure
machine-learning-projects
│
├── decision_trees
│   ├── seeds_analysis.Rmd
│   ├── seeds.R
│   └── seeds.csv
│
├── classification_eeg
│   ├── eeg_eyelid_training.csv
│   └── eeg_eyelid_test.csv
│
├── clustering
│   ├── Mobile_phone_picture.Rmd
│   ├── Mobile_phone_picture.html
│   ├── clustering_analysis_drilling.Rmd
│   ├── clustering_analysis_drilling.html
│   └── drilling.csv
│
├── neural_networks
│   ├── dry_bean_classification_pytorch_Maximilian.ipynb
│   ├── dry_bean_classification_tensorflow_Maxmilian.ipynb
│   └── Lecture_10_Dry_Bean_Dataset.csv
│
└── README.md
1️⃣ Decision Trees – Seed Classification
Objective

Train machine learning models capable of distinguishing three different seed types based on geometric measurements.

Dataset

The dataset contains measurements such as:

Area

Perimeter

Length

Width

Shape features

File:

seeds.csv
Methodology

Exploratory Data Analysis (EDA)

Train/Test split (80/20)

Train three decision tree models:

Decision tree with default stopping criteria

Complete decision tree (no stopping rule)

Pruned decision tree

Evaluate models using the test dataset.

Evaluation Metrics

Confusion Matrix

Accuracy

Precision

Recall

F1-score

An additional experiment evaluates the model performance when using only three features instead of the full dataset.

2️⃣ EEG Classification – Eyelid Detection
Objective

Train classifiers capable of predicting whether a patient's eyelids are open or closed based on EEG sensor measurements.

Label definition:

0 = open eyelids
1 = closed eyelids
Dataset

16 numerical EEG features

1 label column

Files:

eeg_eyelid_training.csv
eeg_eyelid_test.csv
Workflow

Data exploration

Data cleaning and preprocessing

Model training on the training dataset only

Evaluation on the test dataset

Models Implemented

Decision Trees

Support Vector Machines (SVM)

K-Nearest Neighbors (KNN)

Random Forest

AdaBoost

XGBoost

Model Comparison

A final table compares all models using:

Accuracy

Precision

Recall

F1 Score

3️⃣ Clustering

This assignment contains two independent clustering tasks.

Task 1 – Image Color Reduction using K-Means

File:

Mobile_phone_picture.Rmd
Objective

Reduce the number of RGB colors in an image using K-Means clustering.

Each pixel is treated as a data point with three features:

R, G, B
Workflow

Take a picture with a smartphone

Resize the image (e.g. 256×256)

Apply K-Means clustering to group pixels into color clusters

Use the Elbow Method to determine the optimal number of clusters

Outputs

The report contains:

Original image

WSS (Within Sum of Squares) elbow plot

Reconstructed images with reduced color palettes

Interpretation of results

Task 2 – Drilling Machine State Detection

Files:

clustering_analysis_drilling.Rmd
drilling.csv
Problem

A drilling machine operates in several unknown operational states.
Engineers collected 400 observations of two variables but no labels.

Goal

Use clustering techniques to:

Identify the number of machine states

Assign each observation to a cluster

Methods Applied
K-Means

Test different K values

Use the Elbow Method

Assign final cluster memberships

Hierarchical Clustering

Test different linkage methods

Analyze dendrogram

Determine clusters by cutting the tree

DBSCAN

Select MinPts

Determine epsilon using k-distance plot

Identify clusters and noise points

Final Analysis

The clustering results from all methods are compared to analyze whether they produce similar cluster structures.

4️⃣ Neural Networks – Dry Bean Classification
Objective

Train a Feed-Forward Neural Network to classify bean types using the Dry Bean dataset.

Dataset:

Lecture_10_Dry_Bean_Dataset.csv
Workflow

Exploratory Data Analysis (EDA)

Data preprocessing

Train/Test split (80/20)

Convert data to tensors

Train neural network models

Experiments

Different neural network architectures were tested by varying:

Number of hidden layers

Number of neurons

Learning rate

Optimizers

Examples:

Adam
SGD
RMSProp
Implementations

Two implementations were created:

PyTorch
TensorFlow

Files:

dry_bean_classification_pytorch_Maximilian.ipynb
dry_bean_classification_tensorflow_Maxmilian.ipynb
Technologies Used

R

Python

PyTorch

TensorFlow

RMarkdown

Jupyter Notebook

Machine Learning Libraries

Author

Maximilian Knapp

Data Science Student
IMC University of Applied Sciences Krems
