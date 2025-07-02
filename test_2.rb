
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


