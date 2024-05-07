Rails.application.routes.draw do
  devise_for :utilisateurs

  devise_scope :utilisateur do
    root to: 'devise/sessions#new'
  end

  get 'tournois', to: 'tournois#affichage_des_tournois'

end
