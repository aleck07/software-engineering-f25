class Poker
  def initialize(players)
    @players = players
    @hands = Array.new(players.length)
  end

  def play
    puts "Players in the poker game:"
    @players.each_index { |i| puts "#{player_name(i)}: #{player_hand(i)}" }
  end

  def results
    "[pretend these are poker results]"
  end

  def player_name(i)
    @players[i]
  end

  def player_hand(i)
    @hands[i]
  end
end

class Chess
  def initialize(players)
    @players = players
  end

  def play
    puts "Players in the chess game:"
    @players.each { |p| puts "#{p[0]}: #{p[1]}" }
  end

  def results
    "[pretend these are chess results]"
  end

  def player_name(i)
    @players[i][0]
  end
end

class GoPlayer
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end

class Go
  def initialize(players)
    @players = players.map { |name, color| GoPlayer.new(name, color) }
  end

  def play
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
  end

  def results
    "[pretend these are go results]"
  end
end

class PlayGames
  def initialize(game)
    @game = game
  end

  def play
    @game.play
    puts @game.results
  end
end

PlayGames.new(Poker.new(["alice", "bob", "chris", "dave"])).play
puts
PlayGames.new(Chess.new([["alice", "white"], ["bob", "black"]])).play
puts
PlayGames.new(Go.new([["alice", "white"], ["bob", "black"]])).play
