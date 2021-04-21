def bubble_sort(arr)
 l=arr.length
 if l<=1
  return arr
 end

 change=false

 while change

  (l-1).times do |i|
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1],arr[i]
      change=true
    end
  end
end
arr
end

a = [2, 5, 18, 7, 3, 14]
p bubble_sort(a)



