def quicksort(unsorted_array)
  quicksort_helper(unsorted_array, 0, unsorted_array.size - 1)
  return unsorted_array
end

def quicksort_helper(unsorted_array, lo, hi)
  if lo < hi
    p = partition(unsorted_array, lo, hi)
    quicksort_helper(unsorted_array, lo, p-1)
    quicksort_helper(unsorted_array, p+1, hi)
  end
end

def partition(unsorted_array, lo, hi)
  pivot_index = choose_pivot(lo, hi)
  pivot_value = unsorted_array[pivot_index]

  swap(unsorted_array, pivot_index, hi)

  store_index = lo

  (lo...hi).each do |i|
    if unsorted_array[i] < pivot_value
      swap(unsorted_array, i, store_index)
      store_index += 1
    end
  end

  swap(unsorted_array, store_index, hi)
  store_index
end

def choose_pivot(lo, hi)
  rand(lo...hi)
end

def swap(a, i, j)
  a[i], a[j] = a[j], a[i]
end
