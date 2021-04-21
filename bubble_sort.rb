def bubble_sort(arr)
  l = arr.length
  return arr if l <= 1

  change = true

  while change
    change = false
    i = 0
    while i < l - 1
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        change = true
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
    change = false
    i = 0
    while i < l - 1
      if (yield arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        change = true
      end
      i += 1
    end
  end
  arr
end
