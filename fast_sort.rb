def fast_sort(arr)
  return arr if arr.size < 2

  pivot = arr.sample
  arr.delete_at(arr.index(pivot))
  less = arr.select {|el| el <= pivot}
  greater = arr.select {|el| el > pivot}
  return fast_sort(less) + [pivot] + fast_sort(greater)
  end
print fast_sort([12, 3, 5, 1, 6, 3, 6, 34, 234])