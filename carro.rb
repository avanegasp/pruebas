#
# players = [
# {name: "Angie", position:0},
# {name: "Joshua", position:0},
# {name: "Juan"   , position:0}
# ]
#
# winner = nil
#
# until winner
#   players.shuffle.each do |p|
#     die = 1 + rand(6)
#     p[:position] += die
#     if p[:position] >= 100
#        p[:position] = 99
#       winner = p
#       break
#     end
#   end
#
#  players.each do |p|
#     board = ""
#     100.times {|i| board += p[:position] == i ? "*" : " "}
#     puts "#{p[:name].ljust(8)} #{board}|"
#   end
#
#   puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
#   sleep 1
#
#   puts "El ganador es: #{winner[:name]}" if winner
# end



class Game
attr_reader :players, :winner
  def initialize
    @players = []
    @winner = nil
  end

  def add_player(name, position=0)
    @players << {name: name, position:position}
  end

  def next_round
    @players.shuffle.each do |p|
      die = 1 + rand(6)
      p[:position] += die
      if p[:position] >= 100
         p[:position] = 99
        @winner = p
        break
      end
    end
  end
end

race = Game.new
race.add_player("Angie")
race.add_player("Joshua")
race.add_player("Juan")

while !race.winner
  race.next_round

  race.players.each do |p|
     board = ""
     100.times {|i| board += p[:position] == i ? "*" : " "}
     puts "#{p[:name].ljust(8)} #{board}|"
   end
   sleep 1
  #imprimir tablero
end

puts "El ganador es: #{race.winner[:name]}"
