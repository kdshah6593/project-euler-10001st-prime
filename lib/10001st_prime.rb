# Implement your procedural solution here!
def is_prime?(value)
    if (value < 2)
        return false
    else
        (2..value-1).each do |num|
            if value % num == 0
                return false
            end
        end
        return true
    end
end



def prime_number_for(nth_element)
    count = 1
    i = 3
    primes = []

    while count < nth_element
        if is_prime?(i)
            count += 1
            primes.push(i)
        end
        i += 2 # can increment by 2 since all even numbers after 2 are not prime numbers
    end
    primes.last
end