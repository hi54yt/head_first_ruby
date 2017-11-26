class CelestialBody
  attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = "planet"
bodies = Hash.new(default_body)

p bodies.default

# 只是调用了散列默认值的赋值方法
bodies['Mars'].name = "Mars"
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'

p bodies

p bodies.default

# 使用散列默认块
bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "planet"
  hash[key] = body
end

bodies['Mars'].name = "Mars"
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'

p bodies['Mars']
p bodies['Europa']
p bodies['Venus']
p bodies

def create_body
  bodies['Mars'].name = "Mars"
  bodies['Europa'].name = 'Europa'
  bodies['Europa'].type = 'moon'
  bodies['Venus'].name = 'Venus'
end
