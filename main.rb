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
    yield
end


print bubble_sort([4, 7, 2, 8, 5])
