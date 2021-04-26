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
  - all : obtenir la liste des utilisateurs
    - ex: User.all
  - find_by_email : parcoure l'array "@@all_users" jusqu'à trouver l’email correspondant
    - entrée : email
    - sortie : @email
### 2. classe __Event__
- variables d'instance
  - date de début
  - durée
  - titre
  - participants
- méthodes d'instance
  - postpone_24h : décaler un événement à 24 heures plus tard
  - start_date : connaître la date de fin
  - is_past : calculer si l'événement est passé ou prévu (date de début et durée)
  - is_future : le contraire
  - is_soon : savoir si un événement est pour bientôt (ex: dans moins 30 mn)

### 3. EventCreator
lance un menu permettant de créer un évènement de façon un peu plus user-friendly

### 4. CalendarDisplayer
prend tous les événements, et fait un calendrier en ASCII