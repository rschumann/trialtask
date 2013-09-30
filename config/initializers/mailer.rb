ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
	:enable_starttls_auto => false,
	:address => 'smtp.sendgrid.net',
	:port => 25,
	:domain => "medialvoz.com",
	:user_name => 'medialbox@medialvoz.com',
	:password => 'tomek0404',
	:authentication => 'plain',
}
