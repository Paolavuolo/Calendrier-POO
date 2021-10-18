require "pry"

class User #définir la class pour les utilisateurs

	attr_writer :mastercard #permet de rendre la lecture de la varibale difficile
    attr_reader :birthdate #permet de lire la variable sans méthode mais impossible de modfier car la méthode n'existe pas
    attr_accessor :email #va permettre de lire et modifier la variable sans méthodes

	def greet #définition de la méthode qui dit bonjour
		puts "Bonjour, monde !"
	end 

	def say_hello_to_someone (first_name) #méthode qui dit bonjour au prénom choisi
		puts "Bonjour, #{first_name} !"
	end

	def show_itself #méthode qui montre son code d'instance
		print "Voici l'instance :"
		puts self 
	end 

	def update_email (email_to_update) #méthode qui permet de modifier le mail
		@email = email_to_update
	end 

	def read_email #méthode qui permet de lire le mail 
		return @email
	end 
    
  
    def read_mastercard
     	return @mastercard 
    end

    def update_birthdate (birthdate_to_update)
    	@birthdate = birthdate_to_update
    	
    end
end 

binding.pry #permet de tester le code dans le terminal
puts "end of file"

ton_instance = User.new #définition d'un instance 