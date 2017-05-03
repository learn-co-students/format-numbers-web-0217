def separate_with_comma(num)
  if num.to_s.length <= 3
    return num.to_s
  else
    num = num.to_s.reverse
    map = num.chars.map.with_index do |int, index|
      if (index + 1) % 3 == 0 && index != num.length - 1
        int + ','
      else
        int
      end
    end
  end
  map.join('').reverse
end
