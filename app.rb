require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'user'
require 'board'
require 'board_case'
require 'game'

def process
    game = Game.new
    game.go 

    puts "Veux-tu refaire une partie ? Oui ou Non"
    if gets.chomp == "Oui" 
        game.go
    end

end

process 

  