class AlbumeightMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def albumeight_notification(albumeight)
    	@albumeight = albumeight
        mail(to: User.pluck(:email), subject: 'Photo Posted in Ancestry Photos')
    end
end
