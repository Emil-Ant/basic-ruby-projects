# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology

numbers = [4,3,78,2,0,2]

def bubble_sort(list)
    index = 0 
    while index < list.size - 1 do 
        if list[index] > list[index + 1]
            list[index], list[index + 1] = list[index + 1], list[index]
            index = 0
        else index += 1  
        end
    end 
    list     
end

p bubble_sort(numbers)