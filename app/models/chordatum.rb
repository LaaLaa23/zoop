# == Schema Information
#
# Table name: chordata
#
#  id         :integer          not null, primary key
#  class_name :citext
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Chordatum < ActiveRecord::Base
  has_many :species
end
