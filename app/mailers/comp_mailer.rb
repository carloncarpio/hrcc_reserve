class CompMailer < ActionMailer::Base
  #default :from => "hrccicons2012@peoplesparxph.com"
  default :from => "carlo.carpio@capstone-ph.com"

  def mysubmit(comp_name="")
  	@comp_name = comp_name

  	mail(:to => 'ccarpio2818@gmail.com', :subject => "Registered", :from => "ccarpio2818@gmail.com")  

    #mail(:to => 'carloncarpio@yahoo.com',
        #:cc => 'jing.almaden@peoplesparxph.com',
    #    :bcc => "carlo.carpio@capstone-ph.com", :subject => 'Company Reservation')
  end
end
