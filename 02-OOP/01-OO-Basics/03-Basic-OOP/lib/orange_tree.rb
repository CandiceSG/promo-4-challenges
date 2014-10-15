class OrangeTree
  attr_reader :height, :fruits, :age

  def initialize
    @height = 0
    @age = 0
    @dead = false
    @fruits = 0
  end


  def one_year_passes!
    can_die
    unless @dead
      gets_old
      grows
      produces_fruits
    end
  end


  def grows
    @height += 1 if @age <= 10
  end

  def gets_old
    @age += 1
  end

  def can_die
    if (50..100).include? @age
      @dead = true if rand(1..100) < @age
    elsif @age >= 100
      @dead = true
    end
  end


  def dead?
    return @dead
  end


  def produces_fruits
    if (6..10).include? @age
      @fruits = 100
    elsif (11..15).include? @age
      @fruits = 200
    else
      @fruits = 0
    end
  end


  def pick_a_fruit!
    @fruits -= 1 if @fruits > 0
  end
end


def get_infos(orange_tree)
  puts "Age: #{orange_tree.age}"
  puts "Hauteur: #{orange_tree.height}"
  puts "Nb de fruits: #{orange_tree.fruits}"
end

mon_bel_oranger = OrangeTree.new

puts "Orange tree is born !! Yalla"

puts "10 years pass"

10.times do
  mon_bel_oranger.one_year_passes!
end

get_infos(mon_bel_oranger)

mon_bel_oranger.pick_a_fruit!
puts "#{:fruits}"

get_infos(mon_bel_oranger)

puts "now 50 years pass.."

41.times do
  mon_bel_oranger.one_year_passes!
end

get_infos(mon_bel_oranger)

if mon_bel_oranger.dead?
  puts "oups.. he is dead"
else
  puts "he survives"
end



