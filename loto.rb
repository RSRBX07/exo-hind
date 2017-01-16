class Grille 

# enregistre une grille pour le loto courant
def validate_grid grid
@save_grid= grid

    puts "votre grille est enregistrée, vous pouvez jouer #{@save_grid}"
    end
end

def vendredi_13?
# 
Date.today.day == 13 and Date.today.friday
end
end

def prize 
if is_vendredi_13
cagnote = 200000
else 
cagnote = 300000
end 
puts cagnote

end

def demande_de_grille
puts "Choisir 5 nombres entre 1 et 45"
grid = gets
return grid
end

def input_refinement raw_grid
grille = raw_grid.chomp
grille = grille.split " "
refined_grid = []
grille.each do |boule|
refined_grid.push boule.to_i

end
return refined_grid
end
end 


Class Tirage
def make_draw
tirage = (1..45).to_a.shuffle.take 5
# cheat
tirage = [1, 2 , 3 , 4 , 5]
return tirage
end

def show_result sorted_grid, sorted_draw
# comparons la grille et le tirage
winner = (sorted_grid == sorted_draw)
if winner
puts "Vous avez gagne"
els
puts "Vous avez perdu"
end
end
end
grille = demande_de_grille

refined = input_refinement grille

draw = make_draw

# sorting grid and draw
sorted_grid = refined.sort
sorted_draw = draw.sort

show_result sorted_grid, sorted_draw