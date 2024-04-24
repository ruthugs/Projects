
#from keras.callbacks import History 
import tensorflow
import keras
import pickle
history=pickle.load(open("/home/nbritt/CPSC8650/model_history.pkl", "rb"))
print(history.history.keys())

import matplotlib.pyplot as plt
plt.plot(history.history["loss"], label="Train")
plt.plot(history.history["val_loss"], label="Val")
print(history.history["accuracy"])

#plt.axis([0,50, 0, 1])
plt.ylabel('loss')
plt.xlabel('epoch')
plt.legend()
plt.savefig("Loss_graph.png")
plt.clf()
plt.plot(history.history["accuracy"], label="Val")
plt.plot(history.history["val_accuracy"], label="Train")


#plt.axis([0,50, 0, 1])
plt.ylabel('Accuracy')
plt.xlabel('epoch')
plt.legend()
plt.savefig("Accuracy_graph.png")
