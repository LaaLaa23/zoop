# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  url        :string
#  public_id  :string
#  species_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ActiveRecord::Base
  belongs_to :species
  after_destroy :delete_cloudinary_image

  def create
  end

  def delete_cloudinary_image
      Cloudinary::Uploader.destroy( self.public_id ) if self.public_id # Destroy image hosted on Cloudinary.
  end
end
