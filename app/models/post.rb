class Post < ApplicationRecord

	extend FriendlyId
	friendly_id :title, use: :slugged

	scope :most_recent, -> {order(id: :desc)}

	belongs_to :user
	
    validates :title, presence: true, length: { maximum: 50 }
    validates :description, presence: true

	def should_generate_new_friendly_id?
		title_changed?
	end
end
