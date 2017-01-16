require './dice.rb'

my_dice = Dice.new



puts "lancer de de normal"
puts my_dice.roll 

puts "lancer de de pip"
puts my_dice.roll 4

#faire un programe qui affiche le résultat d'un tirage d'un dé à 6 faces
# print result of a dice roll
#roll = 1 + rand 6

faces = [1, 2, 3, 4, 5, 6]

# roll = faces .shuffle

roll = faces[rand 6]
puts roll
# ecrire une méthode roll qui va retourner la valeur d'un dé à 6 faces

# test de loto

require './loto.rb'
ma_grille = Grille.new
le_tirage = Tirage.new

puts "la grille est "
puts ma_grille.demande_de_grille
puts ma_grille.input_refinement raw_grid

puts "le tirage du jour est"
puts le_tirage.make_draw 
puts le_tirage.show_result sorted_grid, sorted_draw

def grid_validation grid_validation


end


