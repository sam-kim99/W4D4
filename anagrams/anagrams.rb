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

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true
p second_anagram?("elvisa", "lives")    #=> true