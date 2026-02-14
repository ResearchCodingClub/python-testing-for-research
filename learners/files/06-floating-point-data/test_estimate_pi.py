import random
from math import fabs

from estimate_pi import estimate_pi

def test_estimate_pi():
    random.seed(0)
    expected = 3.141592654
    actual = estimate_pi(iterations=10000)
    # Test absolute tolerance
    atol = 1e-2
    assert fabs(actual - expected) < atol
    # Test relative tolerance
    rtol = 5e-3
    assert fabs((actual - expected) / expected) < rtol
