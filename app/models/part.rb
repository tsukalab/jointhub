# == Schema Information
#
# Table name: parts
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  stl        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Part < ApplicationRecord
  mount_uploader :stl, StlUploader
  has_many :joint_parts, dependent: :destroy
  has_many :joints, through: :joint_parts
  accepts_nested_attributes_for :joints, allow_destroy: true
end
