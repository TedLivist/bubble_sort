def bubble_sort(arr)
  l = arr.length
  return arr if l <= 1

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

def bubble_sort_by(arr)
  l = arr.length
  change = true

  while change
    i = 0
    while i < l - 1
      if (yield arr[i], arr[i + 1]).positive?
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

bubble_by = bubble_sort_by %w[hi hello hey] do |left, right|
  left.length - right.length
end

p bubble_by
