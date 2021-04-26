# README

## Introduction
créer un calendrier de prise de rendez-vous :
- date de début
- durée
- nom
- lieu
- utilisateurs
- affichage de la liste des RDV


## Structure
### 1. classe __User__
- constructeur avec 2 arguments (email, age)
  - ex: julie = User.new("julie@email.com", 32)
- variables d'instance (*attr_accessor*)
  - @email (*string*)
  - @age (*Integer*)
- méthode de classe
  - obtenir la liste des utilisateurs
    - ex: User.all
### 2. classe __Event__
- variables d'instance
  - date de début
  - durée
  - titre
  - participants
- méthodes d'instance
  - décaler un événement à 24 heures plus tard
  - connaître la date de fin
  - calculer si l'événement est passé ou prévu (date de début et durée)