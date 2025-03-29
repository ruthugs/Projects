## Image Retrieval Using Image Captioning

## Overview

-This project focuses on improving image retrieval by generating captions for images and using those captions to search for similar images. The goal is to transform the complex image retrieval task into a caption-based search problem, using deep learning techniques.

-The system utilizes a Convolutional Neural Network (CNN) for feature extraction from images and Long Short-Term Memory (LSTM) networks for caption generation. The generated captions are then matched with those in the dataset using Jaccard Similarity to find the most relevant images.

## Dataset

-The MSCOCO 2014 dataset, which contains images with human-annotated captions. The dataset includes:
-82,783 images for training
-40,504 images for validation
-40,775 images for testing
-Each image in the dataset is associated with five captions, allowing the model to learn varied descriptions of the same image.

## Methodology
-Image Captioning System
-Feature Extraction: CNNs extract image features.
-Text Processing: Captions are preprocessed by removing punctuation, numbers, stopwords, and converting text to lowercase.
-Caption Generation: An LSTM model generates captions for the input images.
-Image Retrieval System
-Query Image: When a query image is provided, the model generates a caption for it.
-Caption Matching: The generated caption is compared with captions in the database using Jaccard Similarity to rank images based on their relevance.

## Models

-Trained five different models with variations in the encoder-decoder architecture:

-Model 1: Encoder - ResNet 152, Decoder - LSTM with 512 hidden states.
-Model 2: Encoder - ResNet 101, Decoder - LSTM with 512 hidden states.
-Model 3: Encoder - ResNet 152, Decoder - LSTM with 256 hidden states.
-Model 4: Encoder - ResNet 101, Decoder - Double-layer LSTM with 512 hidden states.
-Model 5: Encoder - ResNet 101, Decoder - LSTM with GloVe embeddings.

## Results

-Image as Query
-The system retrieves the most similar images by comparing generated captions of the query image with those in the dataset. Images are ranked and retrieved based on their similarity score using Jaccard Similarity.

-Natural Language as Query
-The system can also accept natural language queries. Captions are generated from the input query and used to find similar images from the dataset.

### Conclusion

-This project demonstrates the potential of combining CNN and LSTM models for image captioning and retrieval. The use of Jaccard Similarity for caption matching significantly improves the accuracy of image retrieval tasks.

### Requirements

-Python 3.x
-TensorFlow/Keras
-NumPy
-MSCOCO dataset
-Installation

### Steps

-Clone the repository.
-Install the necessary dependencies using pip install -r requirements.txt.
-Download the MSCOCO dataset.
-Run the main script to train and test the model.

----
For any questions or feedback, feel free to reach out!
Thank you!!
