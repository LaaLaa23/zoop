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

require 'test_helper'

class ChordatumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
