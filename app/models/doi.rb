class Doi < ActiveRecord::Base
	belongs_to :user
	has_many :reviews, dependent: :destroy
	has_many :urls, dependent: :destroy

	validates :name, :description, presence: true
end
