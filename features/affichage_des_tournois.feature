Feature: Affichage de la liste des tournois
  Tout le monde peut voir l ensemble des tournois affiche

  Background: Liste des tournois en base de donnees
    Given les tournois existent en base de donnees
      | nom      | debut      | fin        |
      | Tournoi1 | 10-10-2024 | 11-10-2024 |
      | Tournoi2 | 08-08-2025 | 09-08-2025 |

  Scenario: Tous les tournois s'affichent
    Given l utilisateur est sur la page de connection du site
    And il se connecte
    When il va sur la page des tournois
    Then il accede a tous les tournois
