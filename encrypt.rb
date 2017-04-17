# encoding: utf-8
require 'digest'
puts "Введите слово или фразу для шифрования: "
word = STDIN.gets.chomp
user_choice = 0
until user_choice.between?(1, 3)
  puts "Каким способом зашифровать:
  1. MD5
  2. SHA1
  3. SHA2"
  user_choice = STDIN.gets.to_i
end
case user_choice
  when 1 then
    puts Digest::MD5.hexdigest(word)
  when 2 then
    puts Digest::SHA1.hexdigest(word)
  when 3 then
    puts Digest::SHA2.hexdigest(word)
end
