class UserMailer < ApplicationMailer
	default from: 'anais.nowak@gmail.com'

	def welcome_email(user)
		#on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
		@user = user

		#on définit une variable @url qu'on utilisera dans la view d'e-mail
		@url = 'http://monsite.fr.login'

		#c'est cet appel à mail() qui permet d'envoyer l'emaail en définissant le destinataire et le sujet
		mail(to: @user.email, subject:'Bienvenue chez nous !')	
	
	end	

end
