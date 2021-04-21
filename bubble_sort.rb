def bubble_sort(arr)
 l=arr.length
 if l<=1
  return arr
 end

 change = true

 while change
  i = 0
  while i < l - 1
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
    else
      change = false
    end
    i += 1
  end
 end
 arr
end

a = [2, 5, 18, 7, 3, 14]
p bubble_sort(a)