import numpy as np

def test_numpy_arrays():
    """Test that numpy arrays are equal"""
    # Create two numpy arrays
    array1 = np.array([1, 2, 3])
    array2 = np.array([1, 2, 3])
    # Check that the arrays are equal
    np.testing.assert_array_equal(array1, array2)


def test_2d_numpy_arrays():
    """Test that 2d numpy arrays are equal"""
    # Create two 2d numpy arrays
    array1 = np.array([[1, 2], [3, 4]])
    array2 = np.array([[1, 2], [3, 4]])
    # Check that the nested arrays are equal
    np.testing.assert_array_equal(array1, array2)


def test_numpy_arrays_with_tolerance():
    """Test that numpy arrays are equal with tolerance"""
    # Create two numpy arrays
    array1 = np.array([1.0, 2.0, 3.0])
    array2 = np.array([1.00009, 2.0005, 3.0001])
    # Check that the arrays are equal with tolerance
    np.testing.assert_allclose(array1, array2, atol=1e-3)
