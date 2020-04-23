require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'user'
require 'board'
require 'board_case'

puts "Bienvenue dans le jeu du Morpion !"

puts "Quel est le nom du premier joueur ?"
user1 = User.new("#{gets.chomp}",1,"X")

puts "Quel est le nom du deuxieme joueur ? "
user2 = User.new("#{gets.chomp}",10,"O")

board = Board.new 

while board.check_end_game == 0 do 
 
    puts "A toi de jouer #{user1.show_name} ! Quel case choisis-tu ?"

    board.change(user1.choice,user1) 
    board.show
    board.end_text(user1.show_name)
    break if board.check_end_game == 1
    
    puts "A toi de jouer #{user2.show_name} ! Quel case choisis-tu ?"

    board.change(user2.choice,user2)
    board.show
    board.end_text(user1.show_name)
    break if board.check_end_game == 2
    
end

   
  