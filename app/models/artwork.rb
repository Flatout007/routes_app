# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
   validates :titles, presence: true, uniqueness: {scope: :artist_id, message: "should only be one combo"}
   
   belongs_to(:artist, foreign_key: 
   :artist_id, class_name: 'User')
    
end
