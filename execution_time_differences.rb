list = [0, 3, 5, 4, -5, 10, 1, 90]

# my_min
# Phase 1
def my_min_1(arr)
    smallest = arr.first # -5
    arr.each do |ele1| # 5
        arr.each do |ele2| # 0
            if ele1 > ele2 # Break/skip conditional 
                break
            end
            if ele1 < smallest 
                smallest = ele1
            end
        end 
    end
    smallest
end

p my_min_1(list) # -5

# Phase 2
# O(n) - linear
def my_min_2(arr)
    smallest = arr.first 
    arr.each do |ele1| 
        if ele1 < smallest 
            smallest = ele1
        end
    end
    smallest
end

p my_min_2(list)

# largest_contiguous_subsum
# Phase 1
# O(n^2) - Quadratic
def largest_contiguous_subsum(list)
    subsums = []
    (0...list.length).each do |i|
        subsums << [list[i]]
        (i+1...list.length).each do |j|
            subsums << subsums[-1] + [list[j]]
        end
    end
    subsums

    subsums.each_with_index do |subarray, i|
        subsums[i] = subarray.sum 
    end
    subsums.max

end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)