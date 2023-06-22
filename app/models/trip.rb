class Trip < ApplicationRecord
    belongs_to :user

    validates :title, :entry, :country, :region, presence: true
end
