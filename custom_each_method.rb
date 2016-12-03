def each(collection)
  counter = 0

  while counter < collection.size
    yield(collection[counter])
    counter += 1
  end

  collection
end

arr = [1, 2, 3, 4, 5]

each(arr) { |i| puts i }