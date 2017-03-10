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

require 'test_helper'

class SpeciesTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
