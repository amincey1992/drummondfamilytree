class AlbumonesMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def albumone_notification(albumone)
    	@albumone = albumone
        mail(to: User.pluck(:email), subject: 'Photo Posted in Family Group Photos')
    end
end
