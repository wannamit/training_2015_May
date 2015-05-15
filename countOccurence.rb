def CountPart(arr)
  hash = Hash.new
  arr.each do |value|
    
    begin
      hash[value] += 1
    rescue
      hash[value] = 1
    end

  end

  hash
end

puts CountPart [2,4,6,3,6,7,4,1,4,8,1,5,7,9,0,1,0,4,5]
