class Crop < ActiveRecord::Base
  validates :name, presence: true
end

