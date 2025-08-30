# src/predict.py
import joblib
import numpy as np

def predict(input_data):
    model = joblib.load("iris_model.pkl")
    prediction = model.predict(np.array(input_data).reshape(1, -1))
    return int(prediction[0])
