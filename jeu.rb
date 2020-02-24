require_relative "joueur"



class Jeu
  def initialize
    system "clear"
    puts "bienvenue dans le jeu de morpion de Loan et Wara"
    sleep 2
    system "clear"

    puts "Joueur1 comment tu t'appelles ?"
    prenom1 = gets.chomp
    joueur1 = Joueur.new(prenom1, "x")
    puts "Salut #{joueur1.nom}, tu seras #{joueur1.signe}"
    sleep 3
    system "clear"

    puts "Joueur2 comment tu t'appelles ?"
    prenom2 = gets.chomp
    joueur2 = Joueur.new(prenom2, "o")
    puts "Salut #{joueur2.nom}, tu seras #{joueur2.signe}"
    sleep 3
    system "clear"
 end
end

Jeu.new
