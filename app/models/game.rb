class Game < ApplicationRecord
  def add_player
    @players += 1
  end

  def remove_player
    # a chaque fois que j'appelle ma methode remove_player, je crée une RuntimeError qui m'explique
    raise RuntimeError.new "No more player to be removed" if @players <= 0
    @players -= 1
    # if @players == 0 
    #   "Il n'ya pas de joueur"
    # else
    #   @players -= 1
    # end
  end

  # def players
  #   @players ||= 0 # ça remplace ma methode initialize, et je peux dc utiliser ma variable @players
  # end  

  # def initialize   .
  #   @players = 0
  # end

end
