class AlbumfourMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def albumfour_notification(albumfour)
    	@albumfour = albumfour
        mail(to: User.pluck(:email), subject: 'Photo Posted in Bob, Pam, & Family')
    end
end
