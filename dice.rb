#faire un programe qui affiche le résultat d'un tirage d'un dé à 6 faces
# print result of a dice roll
#roll = 1 + rand 6

faces = [1, 2, 3, 4, 5, 6]

# roll = faces .shuffle

roll = faces[rand 6]
puts roll
# ecrire une méthode roll qui va retourner la valeur d'un dé à 6 faces
def roll
    faces = [1, 2, 3, 4, 5, 6]
    roll = faces[rand 6]
end
 roll

puts "La valeur affichée du dé à 6 faces est : #{roll}"

