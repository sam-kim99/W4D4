# O(n!) - factorial
def first_anagram?(string1, string2)
    permutations = string1.split("").permutation.to_a
    permutations.include?(string2.split(""))
end

# word scramble vs. anagram
# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

# O(n) - linear
def second_anagram?(string1, string2)
    string1_array = string1.split("")
    string2_array = string2.split("")
    string1_array.each_with_index do |ele, i|
        second_index = string2_array.index(ele)
        return false if second_index.nil?
        string2_array.delete_at(second_index)
    end
    string2_array.empty? 
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true
# p second_anagram?("elvisa", "lives")    #=> false

#  O(n log n) - Loglinear/Linearithmic
def third_anagram?(string1, string2)
    string1.split("").sort == string2.split("").sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true
# p third_anagram?("elvisa", "lives")    #=> false

# O(n)
def fourth_anagram?(string1, string2)
    return false if string1.length != string2.length
    count1 = Hash.new(0)
    count2 = Hash.new(0)
    (0...string1.length).each do |idx|
        count1[string1[idx]] += 1
        count2[string2[idx]] += 1
    end
    count1 == count2
end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true 
# p fourth_anagram?("elvisa", "lives")    #=> false

# O(n)
def fifth_anagram?(string1, string2)
    count = Hash.new(0)
    string1.each_char {|ele| count[ele] += 1}
    string2.each_char {|ele| count[ele] += 1}
    count.values.all? {|ele| ele.even?}
end

p fifth_anagram?("gizmo", "sally")    #=> false
p fifth_anagram?("elvis", "lives")    #=> true 
p fifth_anagram?("elvisa", "lives")    #=> false