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
        sleep 1
        system "clear"

        puts "Joueur 2, comment tu t'appelles ?"
        prenom2 = gets.chomp
        @joueur2 = Joueur.new(prenom2, "o")
        puts "Salut #{@joueur2.nom}, tu seras #{@joueur2.signe}"
        sleep 1
        system "clear"

        @affichage1 = Affichage.new
        puts "#{@joueur1.nom} = x"
        puts "#{@joueur2.nom} = o"

    def tour
        puts "#{@joueur1.nom}, à toi de jouer"
        valide = false
        while valide == false
            choix = gets.chomp.to_s
            @affichage1.grille1.touche_array.each do |touche|             
                if touche.valeur == choix && choix != "x" && choix != "o"
                    touche.valeur = "x" 
                    valide = true
                    @affichage1.affiche
                end
            end
            if valide == false
            puts "Veuillez rentrer une touche valide"
            end
        end

        puts "#{@joueur2.nom}, à toi de jouer"
        valide = false
        while valide == false
            choix = gets.chomp.to_s
            @affichage1.grille1.touche_array.each do |touche|             
                if touche.valeur == choix && choix != "x" && choix != "o"
                    touche.valeur = "o" 
                    valide = true
                    @affichage1.affiche
                end
            end
            if valide == false
            puts "Veuillez rentrer une touche valide"
            end
        end
    end


end

    def perform

        jeu1 = Jeu.new
        jeu1.tour
        jeu1.tour
        jeu1.tour
        jeu1.tour
    end

perform
