def select(collection)
  counter = 0
  new_colleciton = []

  while counter < collection.size
    answer = yield(collection[counter])

    if answer == true
      new_colleciton << collection[counter]
    end
    counter += 1
  end

  new_colleciton
end


arr = [1, 2, 3, 4, 5, 6]

p select(arr) { |i| i.even? }

