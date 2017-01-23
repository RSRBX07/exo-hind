class Game < ApplicationRecord
  def add_player
    @players += 1
  end

  def remove_player
    if @players == 0 
      "Il n'ya pas de joueur"
    else
      @players -= 1
    end
  end

  private

  def initialize 
    @players = 0
  end

end
