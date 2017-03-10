# == Schema Information
#
# Table name: species
#
#  id           :integer          not null, primary key
#  common_name  :citext
#  latin_name   :citext
#  description  :text
#  status       :string
#  habitat      :text
#  biology      :text
#  more_info    :text
#  biome_id     :integer
#  chordatum_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Species < ActiveRecord::Base
  belongs_to :chordatum
  belongs_to :biome
  has_many :images

  def self.keyword_search(keywords)
    keywords = "%" + keywords + "%"
    Species.where("common_name LIKE ? OR latin_name LIKE ?", keywords, keywords)
  end
end
