=begin
Ecrire une methode 
qui prend une instance de fixnum en argument(accepte de 0 a 9) 
et qui retourne la chaine de carractere du chiffre ecrit en toutes lettres
=end




def french_numbers index
      tableau = ["zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"] 
      tableau [index]
end 
puts " saisir un chiffre entre 0 et 9"
index = gets.chomp.to_i
puts french_numbers index 


def num_to_string number
    if number.class == Fixnum
        case number
        when 0..16
            ["zero","un","deux","trois","quatre","cinq","six","sept","huit","neuf",
             "dix","onze","douze","treize","quatorze","quinze","seize"][number]
        when 17..19
            "dix-" + num_to_string(number-10)
        when 20..29
            "vingt-" +num_to_string(number-19)
        end
   
    end
end

(0..19).each {|n| puts num_to_string n}
puts num_to_string 20

