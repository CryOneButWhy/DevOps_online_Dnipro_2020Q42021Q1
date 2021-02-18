import unittest
from fizzbuzz import fizzbuzzf

class testFizzBuzz(unittest.TestCase):

    def test_fizz(self):
        number=3
        result=fizzbuzzf(number)
        #result=fizzbuzz.fizzbuzzf(number)
        self.assertEqual(result, 'Fizz')

    def test_buzz(self):
        number=5
        result=fizzbuzzf(number)
        self.assertEqual(result, 'Buzz')

    def test_fizzbuzz(self):
        number=15
        result=fizzbuzzf(number)
        self.assertEqual(result, 'FizzBuzz')

#print(__name__)

if __name__ == "__main__":
    unittest.main()
