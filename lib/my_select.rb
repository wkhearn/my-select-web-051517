def my_select(collection)
  if block_given?
    i = 0
    new_collection = []
    while i < collection.length
      new_collection << collection[i] if (yield(collection[i]) == true)
      i += 1
    end
    new_collection
  end
end
