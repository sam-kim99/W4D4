# O(n^2) - quadratic
def bad_two_sum?(array, target)
    (0...array.length).each do |i|
        (i+1...array.length).each do |j|
            return true if array[i] + array[j] == target
        end
    end
    false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(array, target)

end