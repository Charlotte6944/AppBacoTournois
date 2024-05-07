Given('les tournois existent en base de donnees') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @tournois = []
  table.hashes.map do |tournoi|
    @tournoi = Tournoi.create(nom: tournoi['nom'], date_debut: tournoi['debut'], date_fin: tournoi['fin'])
    @tournois << @tournoi
  end
end

Given('l utilisateur est sur la page de connection du site') do
  visit root_path
end

Given('il se connecte') do
  Utilisateur.create(email: 'test@gmail.com', password: 'test11', prenom: 'test')
  fill_in 'email', :with =>  'test@gmail.com'
  fill_in 'password', :with => 'test11'
  click_button "Log in"
end

When('il va sur la page des tournois') do
  visit tournois_path
end

Then('il accede a tous les tournois') do
  expect(page).to have_content @tournois.first.nom
end
