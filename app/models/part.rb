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


class Part < ApplicationRecord
  mount_uploader :stl, StlUploader
  belongs_to :joint
end
