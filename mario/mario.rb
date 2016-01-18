class String
  def is_integer?
    self.to_i.to_s == self
  end
end

class Plumber
  def get_height
    puts "How many levels high should the wall be? ('0' to quit)"
    height = gets.chomp
    check_input_is_integer(height)
  end

  def check_input_is_integer(height)
    unless height.is_integer?
      puts "Please enter a number for height"
      height = get_height
    end
    height
  end

  def get_bricks
    puts "What character or symbol should it be made of?"
    block = gets.chomp
  end

  def output(height, count, brick)
    height.times do
      (height - count).times { print ' ' } #flips the wall to correct orientation
      count.times { print brick }
      count += 1 ; puts
    end
  end

  def main
    loop do
      height = get_height
      break if height == '0'
      brick = get_bricks
      count = 1
      output(height.to_i, count, brick)
    end
  end
end

plumber = Plumber.new
plumber.main
