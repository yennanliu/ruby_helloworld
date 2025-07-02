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




s = 3

puts 3.to_s + ' youuuuu'

#----------------------

nil # nil
nil.class # NilClass

nil.nil? # true
42.nil? # false

nil == nil # true
false == nil # false

#----------------------


# 字串符號Symbols
# Symbol是唯一且不會變動的識別名稱，用冒號開頭：

# :this_is_a_symbol


:this_is_a_symbol


:apple
:hello_world
:_private_method
:名字
:"symbol with space"


#----------------------

person = {
  name: "Alice",
  age: 30,
  city: "Taipei"
}

# 等同於：
person = {
  :name => "Alice",
  :age => 30,
  :city => "Taipei"
}


puts person


fruits = {
  apple: 5,
  banana: 3
}

puts fruits[:apple]  # => 5


#----------------------



a = [ 1, "cat", 3.14 ]

puts a[0] # 輸出 1
puts a.size # 輸出 3

a[2] = nil
puts a.inspect # 輸出 [1, "cat", nil]
a[99] # nil


puts a[777]

#----------------------



colors = ["red", "blue"]

colors.push("black")
colors << "white"
puts colors.join(", ") # red, blue, black, white

colors.pop
puts colors.last #black


colors.pop
puts colors.last #blue


#----------------------

languages = ['Ruby', 'Javascript', 'Perl']

languages.each do |lang|
  puts 'I love ' + lang + '!'
end

# I Love Ruby!
# I Love Javascript!
# I Love Perl!


#----------------------

