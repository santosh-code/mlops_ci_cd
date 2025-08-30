# tests/test_app.py
from src.predict import predict

def test_prediction():
    result = predict([5.1, 3.5, 1.4, 0.2])
    assert result in [0, 1, 2]