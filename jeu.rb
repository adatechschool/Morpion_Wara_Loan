require_relative "joueur"
require_relative "affichage"

class Jeu

    attr_accessor :affichage

    def initialize

        system "clear"
        puts "Bienvenue dans le jeu de morpion de Loan et Wara"
        sleep 1
        system "clear"

        puts "Joueur 1, comment tu t'appelles ?"
        prenom1 = gets.chomp
        joueur1 = Joueur.new(prenom1, "x")
        puts "Salut #{joueur1.nom}, tu seras #{joueur1.signe}"
        sleep 2
        system "clear"

        puts "Joueur 2, comment tu t'appelles ?"
        prenom2 = gets.chomp
        joueur2 = Joueur.new(prenom2, "o")
        puts "Salut #{joueur2.nom}, tu seras #{joueur2.signe}"
        sleep 2
        system "clear"

        Affichage.new

    end






end

jeu1 = Jeu.new


