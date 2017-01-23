=begin 
meta = { 
    14=>"Roubaix",
    9=>"safya", 
    20=>"vincent"
}
place = meta [14]
author = meta [20]
puts  "made with love in @#{place} by #{author}"
=end
departements = {
    59 => 'Nord',
    14 => 'Calvados',
    11 => 'Aude',
    75 => 'Paris'
}
puts "insérer le numéro d'un departement'"
numero = gets.to_i
puts "le #{numero} est le departement #{departements[numero]}"
