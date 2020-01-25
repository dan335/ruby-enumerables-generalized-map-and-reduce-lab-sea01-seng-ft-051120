def map(arr)
  newArr = []
  
  i = 0
  while i < arr.length do
    newArr << yield(arr[i])
    i += 1
  end
  
  newArr
end


def reduce(arr, start=0)
  result = start
  
  i = 0
  while i < arr.length do
    result = yield(result, arr[i])
    puts arr[i], result
    i += 1
  end
  
  result
end