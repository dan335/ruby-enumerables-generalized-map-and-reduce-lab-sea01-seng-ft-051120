def map(arr)
  newArr = []
  
  i = 0
  while i < arr.length do
    newArr << yield(arr[i])
    i += 1
  end
  
  newArr
end


def reduce(arr, start=false)
  result = start
  
  i = 0
  while i < arr.length do
    result = yield(result, arr[i])
    i += 1
  end
  
  result
end