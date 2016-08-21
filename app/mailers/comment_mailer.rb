class CommentMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def comment_notification(comment)
    	@comment = comment
        mail(to: User.pluck(:email), subject: 'New Comment in Forum Post')
    end
end
