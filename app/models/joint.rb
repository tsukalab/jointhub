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
  has_many :joint_tags, dependent: :destroy
  has_many :parts, through: :joint_parts
  has_many :tags, through: :joint_tags
  accepts_nested_attributes_for :joint_parts, allow_destroy: true
  accepts_nested_attributes_for :joint_tags, allow_destroy: true

  def self.search(search)
    if search
      Joint.where(['name LIKE ?', "%#{search}%"])
    else
      Joint.all
    end
  end
end