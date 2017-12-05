import unittest
from day01 import captcha_next, captcha_half

class Day01Test(unittest.TestCase):

    def test_part_1_example_1(self):
        self.assertEqual(3, captcha_next("1122"))

    def test_part_1_example_2(self):
        self.assertEqual(4, captcha_next("1111"))

    def test_part_1_example_3(self):
        self.assertEqual(0, captcha_next("1234"))

    def test_part_1_example_4(self):
        self.assertEqual(9, captcha_next("91212129"))

    def test_part_2_example_1(self):
        self.assertEqual(6, captcha_half("1212"))

    def test_part_2_example_2(self):
        self.assertEqual(0, captcha_half("1221"))

    def test_part_2_example_3(self):
        self.assertEqual(4, captcha_half("123425"))

    def test_part_2_example_4(self):
        self.assertEqual(12, captcha_half("123123"))

    def test_part_2_example_5(self):
        self.assertEqual(4, captcha_half("12131415"))

if __name__ == '__main__':
    unittest.main()
