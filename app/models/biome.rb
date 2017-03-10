# == Schema Information
#
# Table name: biomes
#
#  id          :integer          not null, primary key
#  name        :citext
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Biome < ActiveRecord::Base
  has_many :species
end
