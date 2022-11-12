
def caesar_cipher(string , num)
    arr = string.split("")
    num = num % 26
    arr = arr.map do |x| 
          x = x.ord
          if x.between?(65 , 90) 
             x += num
             x -= 26 if x > 90
          elsif x.between?(97 , 122)
             x += num
             x -= 26 if x > 122
          end
          x.chr
        end
    string  = arr.join("")
    puts string
end
string = "What a string"
caesar_cipher(string , 31)