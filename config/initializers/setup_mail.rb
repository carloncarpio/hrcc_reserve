ActionMailer::Base.smtp_settings = {
	:address			=> "smtp.mail.yahoo.com",
	#:port				=> 587,
	:port				=> 465,
	:domain				=> "http://www.yahoo.com",
	:user_name			=> "carloncarpio@yahoo.com",
	:password			=> "aaron16",
	:enable_starttls_auto	=> true
}