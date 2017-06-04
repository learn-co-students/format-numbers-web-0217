def separate_with_comma(num)
  array = num.to_s.split('').reverse
  indices = (1..array.length).to_a
  counter = 0

  indices.each do |i|
    if i % 3 == 0
      array.insert(i + counter, ",")
      counter += 1
    end
  end

  if array[-1] == ','
    array[-1] = ''
  end

  array.reverse.join
end
