import math
import random

from estimate_pi import estimate_pi

def test_estimate_pi():
    random.seed(0)
    expected = 3.141592654
    actual = estimate_pi(iterations=10000)
    atol = 1e-2
    rtol = 5e-3
    assert math.isclose(actual, expected, abs_tol=atol, rel_tol=rtol)
