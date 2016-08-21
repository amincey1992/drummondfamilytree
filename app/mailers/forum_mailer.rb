class ForumMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    # def forum_notification(forum)
    # 	@forum = forum
    #     mail(to: User.pluck(:email), subject: 'New Forum Post')
    # end

    def forum_notification(forum)
    	@forum = forum
        mail(to: 'sporange1092@gmail.com', subject: 'New Forum Post')
    end
end
