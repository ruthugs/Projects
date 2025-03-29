### Quality Evaluation of Skull Stripped Brain MRI Images

### Project Overview

This project aims to evaluate the quality of skull-stripped brain MRI images. Skull-stripping is an essential process in medical imaging, which removes the skull and non-brain tissue to focus on the brain structures. The goal is to ensure that facial features are removed adequately while preserving crucial brain information. Using deep learning techniques, specifically Convolutional Neural Networks (CNNs), the project classifies skull-stripped MRI images into four categories:

Containing personally identifiable information without any loss of brain features.
Not containing personally identifiable information but with a loss of brain features.
Not containing personally identifiable information with no loss of brain features.
Containing personally identifiable information and containing loss of brain features.
The project uses a dataset of 2,060 skull-stripped MRI scans for training and testing the model.

### Files

Main.ipynb: This Jupyter Notebook contains the implementation of the model, including the dataset loading, preprocessing, model building, and evaluation.
presentation.pptx: A PowerPoint presentation summarizing the problem statement, background, model architecture, training parameters, and results.
Report: A detailed report describing the methodology, data preprocessing, model design, results, and conclusions.
test.py: A Python script for testing the model and evaluating its performance on a sample dataset.

### Installation

To run this project, you need to install the following dependencies:

-pip install tensorflow keras nibabel scikit-learn matplotlib numpy pandas
Ensure you have Python 3.x installed.

### Dataset

The dataset consists of MRI scans stored as .nii files. These files contain 3D brain images of varying depth (up to 150 slices). The dataset is provided along with a CSV file (labels.csv) containing the corresponding labels for each MRI scan. The categories are as follows:

0: Containing personally identifiable information without any loss of brain features.
1: Not containing personally identifiable information but with a loss of brain features.
2: Not containing personally identifiable information with no loss of brain features.
3: Containing personally identifiable information and containing loss of brain features.

### How to Run

Place the MRI scan data in the BSE_BET_DATA/files folder.
Ensure the labels.csv file is available in the BSE_BET_DATA directory.
Run the Main.ipynb notebook to load the data, preprocess it, build and train the model, and evaluate its performance.
jupyter notebook Main.ipynb
License

### This project is licensed under the MIT License - see the LICENSE file for details.
-Dataset Provided by Clemson University.

---
For any questions or feedback, feel free to reach out!
Thank you!!







