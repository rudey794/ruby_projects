def encode(string, wrap)
  string.split('').collect{|char|
  if char.ord.between?(65, 90) || char.ord.between?(97, 122) then  
    shift_char(char, wrap) 
  else 
    char 
  end
}.join
end

def shift_char(char, shift)
  newchar = char.ord + shift
  if  !newchar.between?(65, 90) && !newchar.between?(97,122)
    newchar -= 26
  end
  newchar.chr
end

p encode('xyzabc', 5)