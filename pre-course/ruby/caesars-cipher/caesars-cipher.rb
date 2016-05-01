def solve_cipher(input)
  words = input.split("")

string_container = ""

  words.each do | letter |
  	string_container += (letter.ord + -1).chr
  end
  string_container
end

puts solve_cipher("ifmmp")
# should return "hello"

def solve_cipher(input, shift)
  words = input.split("")

string_container = ""
  words.each do | letter |
	if letter == " "
		string_container += " "
	else
  	string_container += (letter.ord + shift).chr
  end
  end
  string_container
end

puts solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)
# should return "my real name is donald duck"