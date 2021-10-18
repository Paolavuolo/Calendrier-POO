require "pry"
require 'time' 

# consignes !

   #Un évènement qui défini par une date de début, une durée, un titre, un ou plusieurs utilisateurs
   #il faut être capable de décaler un évènement au lendemain, même heure
   #il faut qu'il soit possible de récupérer les informations 
   #il faut que l'on soit capable d'afficher de manière présentable les évènements

class Event

	attr_accessor :start_date, :duration, :Email
	@@attendees = Array.new

	def initialize (event_date, event_duration, event_title, mailling)

	    @start_date = Time.parse (event_date) #va convertir le string en date 
	    @duration = event_duration.to_i #donne la durée sous forme de chiffre
	    @title = event_title #donne le titre
	    @Email = @@attendees.push(mailling) #liste les mails dans un tableau 


	    puts "Rendez vous le #{@start_date} pour assister a #{@title} pendant #{@duration} minutes"

	end
    
    #décaler l'évènement a 24h
	def postpone_24h
		@start_date += 24*60*60
	end
    
    #connaitre la date de fin
    def end_date
    	puts "l'évènement finira le :"
    	@start_date += @duration
    end

    #a-t-il commencé ?
    def is_past? 
    	if start_date < Time.now 
    		return TRUE
    	else start_date > Time.now
    		return FALSE
    	end    	
    end

    #Est-il dans le futur ? 
    def is_future?
    	return !self.is_past? #permet d'obtenir le booléen inverse de la méthode précèdente 
    end

    #c'est bientôt
    def is_soon?
    	time = (start_date - (Time.now))/60
    	if time < 32
    		puts "l'évènement va commencer dans #{time}"
    	end    		
    end

    #affichage propre des données

    def to_s
    	
    	puts ">Titre : #{@title}"
    	puts ">Date de début : #{@start_date}"
    	puts ">Durée : #{@duration} minutes"
    	puts ">Invités : #{@Email.join(', ')}"
    	
    end
binding.pry
puts 'end of file'  
end 