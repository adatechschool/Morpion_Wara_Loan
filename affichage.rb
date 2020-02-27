require_relative "touche"
require_relative "grille"
require_relative "joueur"

class Affichage

	attr_accessor :grille1

	def initialize
		# le jeu se compose des items de la cases_array. Normalement si tu lances le fichier ruby, le morpion devrait s'afficher correctement
		# j'ai laisse le nom des cases pour mieux guider le joueur a la fois dans la position de l'input et a la fois dans sa valeur
		# je voulais aussi laisser un affichage avec la classe Player mais j'arrive pas a connecter mes classes
		# donc je l'ai fait sans variable, mais la volonte etait la
		@grille1 = Grille.new
		self.affiche

	end

	def affiche
		# le jeu se compose des items de la cases_array. Normalement si tu lances le fichier ruby, le morpion devrait s'afficher correctement
		# j'ai laisse le nom des cases pour mieux guider le joueur a la fois dans la position de l'input et a la fois dans sa valeur
		# je voulais aussi laisser un affichage avec la classe Player mais j'arrive pas a connecter mes classes
		# donc je l'ai fait sans variable, mais la volonte etait la

		puts "----------------"
		puts "| #{@grille1.touche_array[0].valeur} | #{@grille1.touche_array[1].valeur} | #{@grille1.touche_array[2].valeur} |" 
		puts "----------------"
		puts "| #{@grille1.touche_array[3].valeur} | #{@grille1.touche_array[4].valeur} | #{@grille1.touche_array[5].valeur} |"
		puts "----------------"
		puts "| #{@grille1.touche_array[6].valeur} | #{@grille1.touche_array[7].valeur} | #{@grille1.touche_array[8].valeur} |"
		puts "----------------"

	end

end

Affichage.new.affiche
