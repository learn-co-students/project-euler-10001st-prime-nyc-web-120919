# Implement your procedural solution here!
def is_prime?(number)
    if number == 0 || number == 1
        return false
    end
    result = true
    limit = Math.sqrt(number).round
    (2..limit).each do |i| 
        if (number % i) == 0
            result = false
            break
        end
    end
    return result
end

def prime_number_for(nth_element)
    count = 0
    number = 0
    while count != nth_element
        number += 1
        if is_prime?(number)
            count += 1 
        end
    end
    return number
end