require "pry"

class User

	#créer un utilisateur
	#attribuer un email
	#lui attribuer son âge
	#obtenir la liste des utilisateurs

	attr_accessor :email, :age, :name
	@@user_count = 0
	@@all = Array.new #création du  tableau qui contiendra les utilisateurs

	def initialize(user_name,user_mail,user_age)
		@name = user_name
		@email = user_mail 
		@age = user_age.to_i

		puts "félicitation ton profil est créé #{self.name}" #petite phrase d'accroche avec le nom de la personne
		@@all.push(self) #ajouter les infos de l'utilisateur dans le tableau "all"

		@@user_count = @@user_count + 1 
	end 

    def self.all #permet de faire apparaitre le tableau avec la command User.all
    	return @@all 
    end

    def self.find_by_email(email)
    	array_select = @@all.select {|user| user.email == email}
    	return array_select [0] if array_select.size > 0
    	return nil 
    end




binding.pry 
end  