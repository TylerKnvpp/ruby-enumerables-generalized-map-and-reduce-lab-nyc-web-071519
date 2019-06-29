def map(array)
  new = []
  i = 0
  while i < array.length
    new << (yield(array[i]))
    i += 1
  end
  return new
end

def reduce(array, start = nil)
  if start
    c = start
    i = 0
  else
    c = array[0]
    i = 1
  end
  while i < array.length
    c = yield(c, array[i])
    i += 1
  end
  return c
end
