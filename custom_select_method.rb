def select(collection)
  counter = 0
  new_colleciton = []

  while counter < collection.size
    answer = yield(collection[counter])
    new_colleciton << collection[counter] if answer == true
    counter += 1
  end

  new_colleciton
end

arr = [1, 2, 3, 4, 5, 6]

p select(arr, &:even?)
