require_relative "joueur"
require_relative "affichage"
require_relative "touche"
class Jeu

    def initialize

        system "clear"
        puts "Bienvenue dans le jeu de morpion de Loan et Wara"
        #sleep 1
        #system "clear"

        puts "Joueur 1, comment tu t'appelles ?"
        prenom1 = gets.chomp
        @joueur1 = Joueur.new(prenom1, "x")
        puts "Salut #{@joueur1.nom}, tu seras #{@joueur1.signe}"
        #sleep 2
        #system "clear"

        puts "Joueur 2, comment tu t'appelles ?"
        prenom2 = gets.chomp
        @joueur2 = Joueur.new(prenom2, "o")
        puts "Salut #{@joueur2.nom}, tu seras #{@joueur2.signe}"
        #sleep 2
        #system "clear"

        @nouvelleA = Affichage.new
        @nouvelleA.affiche
        puts "#{@joueur1.nom} = x"
        puts "#{@joueur2.nom} = o"

    end
    def tour
      puts "#{@joueur1.nom}, à toi de jouer"
      choix = gets.chomp.to_s
=begin
      touche_array.each do |touche|
        if touche.position == choix
          touche.valeur == " x "
        elsif choix != touche.position
          return False
        end
=end
      if choix == "a1"
        puts @nouvelleA.grille1.touche_array[0].valeur
        @nouvelleA.grille1.touche_array[3].valeur = " x "
        @nouvelleA.affiche
      end
    end
end

jeu1 = Jeu.new
jeu1.tour
