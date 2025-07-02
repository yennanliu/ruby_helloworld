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

# hash

config = { :foo => 123, :bar => 456, :key => 999 }
puts config[:foo] # 輸出 123
config["nothing"] # 是 nil


puts config[:key]

# each
config.each do |key, value|
	puts "#{key} is #{value}"
end

#----------------------


# flow controller


puts 1 > 2 # 大於
puts 1 < 2 # 小於
puts 5 >= 5 # 大於等於
puts 5 <= 4 # 小於等於
puts 1 == 1 # 等於
puts 2 != 1 # 不等於

puts ( 2 > 1 ) && ( 2 > 3 ) # 和
puts ( 2 > 1 ) || ( 2 > 3 ) # 或

puts (1 > 0)
puts (1 < 0)


#----------------------

# if else

total = 26000

if total > 100000
  puts "large account"
elsif total > 25000
  puts "medium account"
else
  puts "small account"
end


#----------------------


x=1
y=2
z=3

puts (x > y) ? "bigger" : "smaller"



#----------------------


# case

#name="zzzz"
name="John"

case name
  when "John"
    puts "Howdy John!"
  when "Ryan"
    puts "Whatz up Ryan!"
  else
    puts "Hi #{name}!"
end


#----------------------

i=0
while ( i < 10 )
  i += 1
  next if i % 2 == 0 #跳過雙數
end


#----------------------


# loop

i2 = 0

loop do
	i2 += 1
	puts i2
	break if i2 > 10
end


#----------------------

# reg


# 抓出手機號碼
phone = "123-456-7890"
if phone =~ /(\d{3})-(\d{3})-(\d{4})/
  ext  = $1
  city = $2
  num  = $3
end


puts phone

#----------------------


