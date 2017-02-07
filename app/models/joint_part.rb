# == Schema Information
#
# Table name: joint_parts
#
#  id         :integer          not null, primary key
#  joint_id   :integer          not null
#  part_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_joint_parts_on_joint_id  (joint_id)
#  index_joint_parts_on_part_id   (part_id)
#
# Foreign Keys
#
#  fk_rails_194d55db99  (joint_id => joints.id)
#  fk_rails_a11b863345  (part_id => parts.id)
#

class JointPart < ApplicationRecord
  belongs_to :joint
  belongs_to :part
end
