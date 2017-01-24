=begin
Ecrire une methode 
qui prend une instance de fixnum en argument(accepte de 0 a 9) 
et qui retourne la chaine de carractere du chiffre ecrit en toutes lettres
=end



class Fixnumber

def self.french_numbers index
      tableau = ["zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"] 
      tableau [index]
end 
puts " saisir un chiffre entre 0 et 9"
index = gets.chomp.to_i
puts french_numbers index 


def self.num_to_string number
    if number.class == Fixnum # fixnum est une classe de ruby , ici ma condition est : est ce que mon argument number est une classe de type fixnum, si oui je continue
        case number # ici mon switch case se base sur une valeur number
        when 0..16  # de 0 à 16 je rentre ds ce cas
            ["zero","un","deux","trois","quatre","cinq","six","sept","huit","neuf",
             "dix","onze","douze","treize","quatorze","quinze","seize"][number]
        when 17..19 # des que j'arrive à 17, j'appelle ma méthode num_to_string en enlevant 10
            "dix-" + num_to_string(number-10)
        when 20..29 # des que j'arrive à 20, j'appelle ma méthode num_to_string en enlevant 20
            "vingt-" +num_to_string(number-20)
        end
   
    end
end
end

# (0..19).each {|n| puts num_to_string n}
# puts num_to_string 20

# puts num_to_string "hind"