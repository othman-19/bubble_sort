# bubble_sort method for sorting an array of integers
def bubble_sort(arr)
  loop do
    swap = false; i = 0
    while i < arr.length - 1
      (swap = true; swap_var = arr[i]; arr[i] = arr[i + 1];
      arr[i + 1] = swap_var) if arr[i] > arr[i + 1]; i += 1
    end
    break if swap == false
  end
  arr
end

# bubble_sort method for sorting an array of strings
def bubble_sort_by(arr)
  loop do
    swapped = false; index = 0
    while index < arr.length - 1
      first = arr[index]; second = arr[index + 1]; swap = yield(first, second)
      (swap_var = arr[index]; arr[index] = arr[index + 1];
      arr[index + 1] = swap_var; swapped = true) if swap.positive?; index += 1
    end
    break if swapped == false
  end
  arr
end

print bubble_sort([4, 7, 2, 8, 5])
puts '-----'
print bubble_sort_by(%w[cat, goat, cow, elephant, hen]) { |first, second|
  first.length - second.length
}
