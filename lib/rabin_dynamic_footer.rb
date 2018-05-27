require "rabin_dynamic_footer/version"

module RabinDynamicFooter
  # Your code goes here...

  class FooterCopyright

  	def self.copyright(name, message) 
  		"&copy; #{Time.now.year} | All Rights Reserved | #{name} | #{message}"
  	end

  end

end
