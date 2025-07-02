
#----------------------

# 方法定義Methods


def say_hello(name)
  result = "Hi, " + name
  return result
end

puts say_hello('ihower')
# 輸出 Hi, ihower


def hola(input)
	return "input = #{input}"
end

puts hola("zzzzzz")


def hello2(input="xxxx")
	return "hi, " + input
end

puts hello2()
puts hello2("jack")


#----------------------



color_string = String.new
color_string = "" # 等同

color_array = Array.new
color_array = [] # 等同

color_hash = Hash.new
color_hash = {} # 等同

time  = Time.new # 內建的時間類別


puts time
puts color_hash


#----------------------


class Person

	def initialize(name)
		@name = name
	end

	def say(word)
		puts "#{word}, #{@name}"
	end
end



p1 = Person.new("ihower")
p2 = Person.new("ihover")

p1.say("Hello") # 輸出 Hello, ihower
p2.say("Hello") # 輸出 Hello, ihover

#----------------------


# class Person2

#   @@name2 = “ihower” # 類別變數

#   def self.say # 類別方法
#     puts @@name2
#     puts "after ...."
#   end

# end

# Person2.say # 輸出 ihower



#----------------------



class Person3
  def initialize(name)
    @name = name
  end
end

p = Person3.new('ihower')
# p.name                      # 出現 NoMethodError 錯誤
# p.name = 'peny'             # 出現 NoMethodError 錯誤



#----------------------


class Person4

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
end


#p = Person4("yori")
p = Person4.new("yori") # NOTE !!! should be this one

puts p.name

p.name="may"

puts p.name

puts p

#----------------------



#----------------------
