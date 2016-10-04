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

class Joint < ApplicationRecord
  has_many :parts
end
