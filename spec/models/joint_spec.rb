# == Schema Information
#
# Table name: joints
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Joint, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end