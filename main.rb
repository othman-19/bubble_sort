def bubble_sort(arr) 
    while true
        swap = false                            
        for i in arr.length
            if arr[i]>arr[i+1]                   
                swap = true
                swap_var = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = swap_var
            end
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



