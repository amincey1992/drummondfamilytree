class AlbumsevenMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def albumseven_notification(albumseven)
    	@albumseven = albumseven
        mail(to: User.pluck(:email), subject: 'Photo Posted in Cindy, Wayne & Family')
    end
end
