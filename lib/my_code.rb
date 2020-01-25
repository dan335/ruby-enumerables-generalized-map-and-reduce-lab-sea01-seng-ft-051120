def map(arr)
  newArr = []
  
  i = 0
  while i < arr.length do
    newArr << yield(arr[i])
    i += 1
  end
  
  newArr
end