# == Schema Information
#
# Table name: joints
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text
#  image       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Joint < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :joint_parts, dependent: :destroy
  has_many :parts, through: :joint_parts
  accepts_nested_attributes_for :joint_parts, allow_destroy: true
end
