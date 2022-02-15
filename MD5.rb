require 'digest'

puts "Введите слово или фразу для шифрования: 
---------------------------------------"
message = gets.encode("utf-8").chomp

puts "Каким способом зашифровать:
1. MD5
2. SHA1
--------"

choice = gets.encode("utf-8").chomp

if choice == "1"
    puts "Вот что получилось: "
    puts Digest::MD5.hexdigest message
elsif choice == "2"
    puts "Вот что получилось: "
    puts Digest::SHA256.digest message
else
    puts "Вы ничего не выбрали"
end
