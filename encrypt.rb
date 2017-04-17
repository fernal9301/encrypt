# encoding: utf-8
require 'digest'
puts "Введите слово или фразу для шифрования: "
word = STDIN.gets.chomp
user_choice = ''
until user_choice == '1' or user_choice == '2'
  puts "Каким способом зашифровать:
  1. MD5
  2. SHA1"
  user_choice = STDIN.gets.chomp
end
case user_choice
  when '1' then
    puts Digest::MD5.hexdigest(word)
  when '2' then
    puts Digest::SHA1.hexdigest(word)
end
