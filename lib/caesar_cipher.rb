def convert_to_ordinals(string)
  array = string.split("")
  array.map! do |char|
      char = char.ord
  end
end

def convert_to_chr(array)
  array.map! do |char|
    char = char.chr
  end
  result = array.join('')
  p result
end

def cipher(string, index = 0)
  ordinal_array = convert_to_ordinals(string)
  if index > 25
    index -= 26 
  end
  ordinal_array.each_with_index do |ord, i|
    if ord.between?(97,122)
      if (ord - index) < 97
        ordinal_array[i] = 123 - (index - (ord - 97))
      else
        ordinal_array[i] = ord - index
      end
    elsif ord.between?(65,90)
      if (ord - index) < 65
        ordinal_array[i] = 91 - (index - (ord - 65))
      else
        ordinal_array[i] = ord - index
      end
    end
  end
  convert_to_chr(ordinal_array)
end

cipher('Sup Mate?',3)