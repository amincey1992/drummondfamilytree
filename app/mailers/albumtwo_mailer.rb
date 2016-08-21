class AlbumtwoMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def albumtwo_notification(albumtwo)
    	@albumtwo = albumtwo
        mail(to: User.pluck(:email), subject: 'Photo Posted in Grandma & Paw Paws Album')
    end
end
