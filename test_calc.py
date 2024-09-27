# test_calculator.py

import unittest
from calculator import multiply

class TestCalculator(unittest.TestCase):

    def test_multiply_two_positive_numbers(self):
        self.assertEqual(multiply(2, 3), 6)

    def test_multiply_positive_and_negative(self):
        self.assertEqual(multiply(4, -5), -20)

    def test_multiply_by_zero(self):
        self.assertEqual(multiply(0, 100), 0)

    def test_multiply_two_negative_numbers(self):
        self.assertEqual(multiply(-2, -3), 6)

    def test_multiply_float_numbers(self):
        self.assertAlmostEqual(multiply(2.5, 4.2), 10.5, places=1)

if __name__ == '__main__':
    unittest.main()

