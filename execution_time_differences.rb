list = [0, 3, 5, 4, -5, 10, 1, 90]

def my_min(arr)
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

p my_min(list) # -5