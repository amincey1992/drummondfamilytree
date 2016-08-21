class AlbumthreeMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def albumthree_notification(albumthree)
    	@albumthree = albumthree
        mail(to: User.pluck(:email), subject: 'Photo Posted in Kathy, Gene & Family')
    end
end
