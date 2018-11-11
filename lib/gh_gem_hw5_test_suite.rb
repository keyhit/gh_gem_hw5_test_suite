def test_1_3
  # -----------------------------------------------------------------
  task = '1.3'
  puts "----| Execution 1 | of task #{task} -----".white.on_black
  edge_cube_length = 2

  volume = Cube.volume(edge_cube_length)
  square = Cube.cube_plane_square(edge_cube_length)

  actual = { volume: volume, square: square }
  expect = { volume: 8, square: 4 }
  comment = task
  Test.result(actual, expect, comment)
  puts
end

def test_1_4
  # -----------------------------------------------------------------
  task = '1.4'
  puts "----| Execution 2 | of task #{task} -----".white.on_black
  number1 = 30
  number2 = 19
  numbers = [number1, number2]

  average = Average.count(numbers)
  geometric = GeometricMean.count(numbers)

  actual = { average: average, geometric: geometric }
  expect = { average: 24.5, geometric: 23.8747 }
  comment = task
  Test.result(actual, expect, comment)
  puts
end

def test_1_5
  # -----------------------------------------------------------------
  task = '1.5'
  puts "----| Execution 3 | of task #{task} -----".white.on_black
  number1 = -30
  number2 = 19
  numbers = [number1, number2]

  average = Average.count(numbers)
  geometric = GeometricMeanModule.count(numbers)

  actual = { average: average, geometric: geometric }
  expect = { average: -5.5, geometric: 23.8747 }
  comment = task
  Test.result(actual, expect, comment)
  puts
end

def test_1_6
  # -----------------------------------------------------------------
  task = '1.6'
  puts "----| Execution 4 | of task #{task} -----".white.on_black
  cathetus1 = 3
  cathetus2 = 6.5

  angle = { a: 90 }
  angle_side = { b: cathetus1, c: cathetus2 }

  triangle = Triangle.new(angle, angle_side)
  square = triangle.square
  hypotenuse = triangle.hypotenuse

  actual = { hypotenuse: hypotenuse, square: square }
  expect = { hypotenuse: 7.1589, square: 9.75 }
  comment = task
  Test.result(actual, expect, comment)
  puts
end

def test_1_12
  task = '1.12'
  puts "----| Execution 5 | of task #{task} -----".white.on_black
  side = 5

  sides_length = { a: side, b: side, c: side }
  angle = { a: 60 }

  triangle = Triangle.new(angle, sides_length)
  square = triangle.square

  actual = { square: square }
  expect = { square: 10.8253 }
  comment = task
  Test.result(actual, expect, comment)
  puts
end

def test_1_15
  task = '1.15'
  puts "----| Execution 6 | of task #{task} -----".white.on_black

  hypotenuse = 20
  cathetus = 10
  angle = { a: 90 }
  side = { a: hypotenuse, b: cathetus }

  find = Triangle.new(angle, side)
  second_cathetus = find.cathetus
  side[:c] = second_cathetus

  find = Triangle.new(angle, side)
  radius = find.radius_circle_inside_triangle

  actual = { second_cathetus: second_cathetus, radius: radius }
  expect = { second_cathetus: 17.3205, radius: 3.6603 }
  comment = task
  Test.result(actual, expect, comment)
  puts
end

def test_1_16
  task = '1.16'
  puts "----| Execution 7 | of task #{task} -----".white.on_black
  circle_length = 50

  circle = Circle.new(circle_length)
  circle_square = circle.square

  actual = { circle_square: circle_square }
  expect = { circle_square: 199.0446 }
  comment = task
  Test.result(actual, expect, comment)
  puts
end
