departements = {
    lille: 59000,
    paris: 75000,
    }
puts "saisir votre ville'"
ville = gets.chomp.downcase.to_sym

puts "la ville de #{ville.captalize} se situe dans le departement #{departements[ville]}"