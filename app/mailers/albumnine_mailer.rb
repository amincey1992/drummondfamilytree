class AlbumnineMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def albumnine_notification(albumnine)
    	@albumnine = albumnine
        mail(to: User.pluck(:email), subject: 'Photo Posted in Margie, Lindy & Family')
    end
end
