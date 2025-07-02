# https://ihower.tw/rails/ruby.html


#----------------------

str = "123"
puts str


#----------------------


i=1

puts "i = #{i} !!!"

puts 'helloooo' + ' >>>>'

#----------------------

var1 = 'stop'
var2 = 'foobar'
var3 = "aAbBcC"

puts var1.reverse # pots
puts var2.length # 6
puts var3.upcase # AABBCC
puts var3.downcase # aabbcc

#----------------------

verb = 'work'
where = 'office'

puts "I #{verb} at the #{where}" # 輸出 I work at the office


#----------------------



# 輸出「UPPER」
puts "upper".upcase

# 輸出 -5 的絕對值
puts -5.abs

# 輸出 Fixnum 類別
puts 99.class

# 輸出五次「Ruby Rocks!」
counts = 5

counts.times do
  puts "Ruby Rocks!"
end


#----------------------



composer = 'Mozart'
puts composer + ' was "da bomb", in his day.'

my_composer = 'Beethoven'
puts 'But I prefer ' + my_composer + ', personally.'



#----------------------




var1 = 2
var2 = '5'

puts var1.to_s + var2 # 25
puts var1 + var2.to_i # 7

puts 9.to_f / 2 # 4.5



#----------------------



