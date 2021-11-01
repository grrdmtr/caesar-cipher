def convert_to_ordinals(string, index = 0)
  array = string.split("")
  array.map! do |char|
    if char.ord.between?(65,90) || char.ord.between?(97,122)
      char = char.ord + index
        if char.between?(91,96) || (char > 122)
          char = char - 26
        end
      char 
      else
      char = char.ord
      char
    end
  end
  convert_to_chr(array)
end

def convert_to_chr(array)
  array.map! do |char|
    char = char.chr
  end
  result = array.join('')
  p result
end

convert_to_ordinals("Salut Mihaela",12)