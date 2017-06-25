class Fighter
  @@totalfighters=0
  attr_accessor :health
  attr_reader :name,:power,:timeAttacks
  def initialize()
    @@totalfighters+=1
    @name = "Fighter" + @@totalfighters.to_s
    @power = 1+rand(20)
    @health = 1+rand(100)
    @timeAttacks = 1+rand(5)
  end

  def isAlive
    self.health > 0
  end

  def to_s
    puts "     ","    #{self.name}","    "
    puts "Health: #{self.health}"
    puts "Power: #{self.power}"
    puts "Attacks #{self.timeAttacks} times"
  end

  def attack(theOtherFighter)
    theOtherFighter.health -= self.power*self.timeAttacks
    if theOtherFighter.health < 0
      theOtherFighter.health = 0
    end
  end
end

def showScore(*p)
  p.each {
    |eachFighter|
    puts "----------------------------------"
    puts eachFighter
    puts "----------------------------------"
  }
end

def fight(p1, p2)
  while p1.isAlive && p2.isAlive
    p1.attack(p2)
    p2.attack(p1)
    #showScore(p1,p2)
  end
  if !p1.isAlive && !p2.isAlive
    puts ""
    puts "________ No one won! ________"
    puts ""
  else
    if p1.isAlive
      puts ""
      puts "________ #{p1.name} won! ________"
      puts ""
    else
      puts ""
      puts "________ #{p2.name} won! ________"
      puts ""
    end
  end
end


p1 = Fighter.new
p2 = Fighter.new
puts
puts "________ Let's Fight ________"
puts
showScore(p1,p2)
fight(p1, p2)
