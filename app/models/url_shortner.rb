class UrlShortner < ActiveRecord::Base
	validates :original_url, presence: true, uniqueness: true
	BASE_URL = 'http://my_url/'
	after_create :genarate_simplified_url

	def genarate_simplified_url
		rand = SecureRandom.hex(6)
		self.generated_url = BASE_URL + "#{rand}"
		self.save!
	end
end
