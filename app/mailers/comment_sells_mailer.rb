class CommentSellsMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def comment_sell_notification(comment_sell)
    	@comment_sell = comment_sell
        mail(to: User.pluck(:email), subject: 'New Comment in Giveaway')
    end
end
