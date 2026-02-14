import random

def estimate_pi(iterations):
    num_inside = 0
    for _ in range(iterations):
        x = random.random()
        y = random.random()
        if x**2 + y**2 < 1:
            num_inside += 1
    return 4 * num_inside / iterations
