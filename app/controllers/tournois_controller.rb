class TournoisController < ApplicationController

  def affichage_des_tournois
    @tournois = Tournoi.all
  end

end
