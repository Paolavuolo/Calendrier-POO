require "pry"

class User
	attr_accessor :email
	@@user_count = 0 #on initliaze la varibale de classe qui sera un compteur du nombre d'instance

	def initialize(email_to_save) #la méthode initialize permet de créer une instance directement avec ses attributs
	
	    if check_email(email_to_save) #on vérifie l'email proposé via une méthode check email définit plus bas
		   @email = email_to_save
	    else 
		   puts "ERREUR ! EMAIL FOIREUX. Recommence" #message d'erreur si email n'est pas sous le bon format
	    end

		@@user_count = @@user_count + 1 #un utilisateur vient d'être créé : on ajoute donc 1 au compteur
		puts "On envoie un email de Bienvenue !!"
	end

	def self.count #méthode de classe Nomdelaclasse.méthode ! défini comme les méthodes d'instances sauf qu'on ajoute self avant le nom de la méthode
	    return @@user_count	
	end

	private #toutes les méthodes en dessous de cette balise seront privées.

	def check_email_private(email_to_save)
		#code pour vérifier le format de l'e-mail
		#si l'e-mail est ok, ca renvoie TRUE. sinon FALSE
	end
end 

binding.pry
puts "end of file"