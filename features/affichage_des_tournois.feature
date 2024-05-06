Feature: Affichage de la liste des tournois
  Tout le monde peut voir l ensemble des tournois affiche

  Scenario: Tous les tournois s'affichent
    Given l utilisateur est sur la page de connection du site
    And il se connecte
    When il va sur la page des tournois
    Then l ensemble des tournois s affiche à l ecran
