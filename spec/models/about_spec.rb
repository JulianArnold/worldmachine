# == Schema Information
#
# Table name: abouts
#
#  id         :integer          not null, primary key
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe About, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
