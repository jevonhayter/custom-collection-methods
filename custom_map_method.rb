def map(collection)
  new_collection = []

  collection.each do |i|
    answer = yield(i)
    new_collection << answer
  end
  new_collection
end

arr = [1, 2, 3, 4, 5, 6]

p map(arr) { |i| i + 1 }
