def bubble_sort(arr)
  (arr.size - 2).downto(0) do |i|
    (0).upto(i) do |j|
      if arr[j] > arr[j+1]
        temp = arr[j]
        arr[j] = arr[j+1]
        arr[j+1] = temp
      end
    end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])
