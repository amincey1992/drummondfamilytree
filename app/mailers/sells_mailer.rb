class SellsMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def sell_notification(sell)
    	@sell = sell
        mail(to: User.pluck(:email), subject: 'New Item For Giveaway')
    end
end
