def separate_with_comma(num)
  if num.to_s.length <= 3
    num.to_s
  else
    insertion_points = [2, 5, 8, 11, 14, 17]
    reversed_num_array = num.to_s.reverse.split("")
    reversed_num_array.each_with_index.map do |number, index|
      if (insertion_points.include?(index)) && index != reversed_num_array.count - 1
        number + ","
      else
        number
      end
    end.join().reverse
  end
end
