# == Schema Information
#
# Table name: parts
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  stl        :string
#  joint_id   :integer
#

require 'rails_helper'

RSpec.describe Part, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
