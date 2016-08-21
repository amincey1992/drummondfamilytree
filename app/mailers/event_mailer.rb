class EventMailer < ApplicationMailer
	default from: 'drummondfamilytree@gmail.com'

    def event_notification(event)
    	@event = event
        mail(to: User.pluck(:email), subject: 'New Event Created')
    end
end
