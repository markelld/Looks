class Stylist < ApplicationRecord
  belongs_to :user 
  has_many_attached :images  
  has_rich_text :bio
end
