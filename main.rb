def bubble_sort(arr)
    while true
        swap = false
        i = 0
        while i < arr.length - 1
            if arr[i] > arr[i+1]
                swap = true
                swap_var = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = swap_var
            end
            i += 1
        end
        if swap == false
            break
        end
    end
    arr
end

def bubble_sort_by(arr)
    while true
      swapped = false
      index = 0
      while index < arr.length - 1 do
        first = arr[index]
        second = arr[index + 1]
        swap = yield(first, second)
        puts "swap value: #{swap}"
        if swap > 0
          swap_var = arr[index]
          arr[index] = arr[index + 1]
          arr[index + 1] = swap_var
          swapped = true
        end
        index += 1
      end
      if swapped == false
        break
      end
    end
    arr
end


print bubble_sort([4, 7, 2, 8, 5])
puts "-----"
print bubble_sort_by(["cat", "goat", "cow", "elephant", "hen"]) { |first, second|
  first.length - second.length
}
