class CompMailer < ActionMailer::Base
  #default :from => "hrccicons2012@peoplesparxph.com"
  default :from => "carlo.carpio@capstone-ph.com"

  def mysubmit(comp_name="")
  	@comp_name = comp_name

  	mail(:to => 'hrccicons2012@peoplesparxph.com',
  		 :cc => 'carlo.carpio@capstone-ph.com',
  		 :subject => "Company Performance Requirements", )  

    #mail(:to => 'carloncarpio@yahoo.com',
        #:cc => 'jing.almaden@peoplesparxph.com',
    #    :bcc => "carlo.carpio@capstone-ph.com", :subject => 'Company Reservation')
  end
end
