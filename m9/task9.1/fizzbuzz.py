def fizzbuzzf(number):
    if (number%3) == 0 and (number%5) == 0:
        print('FizzBuzz')
        return 'FizzBuzz'        
    elif (number%5) == 0:
        print('Buzz')
        return 'Buzz'
        
    elif (number%3) == 0:
        print('Fizz')
        return 'Fizz'
    else:
        return ''
fizzbuzzf(10)
