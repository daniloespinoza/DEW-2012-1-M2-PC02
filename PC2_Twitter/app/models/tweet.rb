class Tweet < ActiveRecord::Base

Twitter.configure do |config|
      config.consumer_key = 'Y72VpVV829gooqgTCW7K4w'
      config.consumer_secret = 'aEtpXqLBmqRZjQ6pfKtG5Gq4i8IHKpxhbYdSGEIc'
      config.oauth_token = '729627216-ZySmWAczVj99k1BAboyXJWxfgQkO9glQcR7z9vnc'
      config.oauth_token_secret = 'k4ZKDc0NaO86xqcdTQwTTIujwyOzzEoXxCbk0k2n8'
end    

 
  def update_status
	Twitter.update(self.message)
  end

  def read_text
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).text
  end  

end
