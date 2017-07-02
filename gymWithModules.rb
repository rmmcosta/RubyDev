module WarmUp
  def pushUps
    puts "Give 30"
  end
end

class Gym
  include WarmUp

  def muscle
    puts "Do some lifts"
  end
end

class Tropa
  include WarmUp

  def marcha
    puts "March on"
  end
end

johny = Gym.new
gijo = Tropa.new

puts johny.pushUps, johny.muscle, gijo.pushUps, gijo.marcha
