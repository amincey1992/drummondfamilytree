class AlbumtenMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def albumten_notification(albumten)
    	@albumten = albumten
        mail(to: User.pluck(:email), subject: 'Photo Posted in John, Cindy & Family')
    end
end
