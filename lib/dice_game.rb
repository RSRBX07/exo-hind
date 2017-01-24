# tirage de dé à 6 faces
#faces = [1, 2, 3, 4, 5, 6]
dices_values = [rand(1..6)]
puts dices_values.inspect
case dices_values[0] + dices_values[1]
#si somme = 3 gagné
when 3
    puts "gagne"
#si somme = 12 rejouer
when 12
        puts "rejouer"
#sinon perdu
 else
            puts "perdu"
end





