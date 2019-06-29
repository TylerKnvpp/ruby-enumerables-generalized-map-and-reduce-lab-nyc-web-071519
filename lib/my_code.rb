def map(array)
  new = []
  i = 0
  while i < array.length
    new << (yield(array[i]))
    i += 1
  end
  return new
end


def reduce(array, starting_value=nil)
  if starting_value
    current_total = starting_value
    i = 0
  else
    current_total = array[0]
    i = 1
  end
  while i < array.length
    current_total = yield(current_total, array[i])
    i += 1
  end
  current_total
end
