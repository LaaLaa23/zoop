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

require 'test_helper'

class BiomeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
