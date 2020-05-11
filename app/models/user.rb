class User < ApplicationRecord
	after_create :welcome_send

	# Fait appel au mailer UserMail en lui faisant exécuter welcome_email, avec, pour seule entrée, l'instance créée (d'ou le self)
	# le deliver_now permet d'envoyer immédiatement l'e-mail
	def welcome_send
		UserMailer.welcome_email(self).deliver_now
	end 

end
