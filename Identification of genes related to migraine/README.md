## Identification of genes related to migraine

## Project Overview

This project focuses on identifying genes or genetic markers related to migraine susceptibility. The goal is to investigate genetic variants, such as Single Nucleotide Polymorphisms (SNPs), associated with migraines to uncover potential genetic determinants that may lead to better diagnosis and personalized treatment.

## Files Overview

### 1. Checkpoint 1.ipynb
-This Jupyter notebook contains the initial exploratory data analysis (EDA) of the dataset. The key steps include:

-Loading and cleaning the dataset (removing missing values).
-Visualizing the distribution of SNPs across chromosomes using histograms.
-Sorting the data and preparing it for further analysis.
-The notebook also includes:

-Python libraries used: pandas, matplotlib, seaborn
-Key visualizations: A histogram of SNP distribution across chromosomes.

### 2.Final Report PDF
** 1. Data Files
- **migraine1.csv**: The primary dataset used in this project. It contains genetic data related to migraines, including SNP identifiers, effect allele frequencies, statistical measures, and genetic associations with migraines across multiple studies.

** 2. Data Processing and Exploratory Data Analysis (EDA)
- This section covers the cleaning and processing of the dataset, such as removing missing values, duplicates, and performing checks on certain columns. It also includes an overview of the exploratory data analysis done to understand the distribution of SNPs across chromosomes and their potential relationships with migraine susceptibility.

** 3. Visualizations
- Visual representations of the data, including:
  - A histogram displaying the distribution of SNPs across chromosomes.
  - Bar graphs showcasing the relationship between SNPs, reference alleles, and their associated beta values.
  
** 4. Machine Learning Models
- **Linear Regression Model**: This model is used to predict migraine susceptibility based on genetic factors such as effect allele frequency, sample size, and p-value.
- **Clustering Models**: K-means and DBSCAN algorithms were used to group similar SNPs, identifying potential gene clusters related to migraines.

** 5. Conclusion
- The project identifies key SNPs and their associations with migraine susceptibility, providing insights into potential genetic factors influencing migraine development.

** 6. Future Work
- Future steps involve refining models, incorporating more features, and expanding the dataset to validate findings and improve predictive capabilities.

** 7. References
- Relevant studies and datasets on migraine genetics.

### 3. K-Means Clustering.ipynb**: This notebook contains the code for performing K-Means clustering on the dataset. The algorithm groups similar SNPs into clusters, helping identify potential gene clusters related to migraines.

### 4. linearmodel-3.ipynb**: This notebook implements a linear regression model to predict migraine susceptibility based on genetic factors, such as effect allele frequency, sample size, and p-value. The model helps in identifying the relationship between SNPs and migraine risk.

### 5. logisticmodel:DBSCAN.ipynb**: This notebook combines DBSCAN clustering and linear regression models. DBSCAN (Density-Based Spatial Clustering of Applications with Noise) is used to identify dense regions of SNPs, and the linear model is used to analyze their association with migraine susceptibility.

### 6. migraine.csv**: Input file

For any questions or feedback, feel free to reach out!
Thank you!!

