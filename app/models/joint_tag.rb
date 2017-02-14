# == Schema Information
#
# Table name: joint_tags
#
#  id         :integer          not null, primary key
#  joint_id   :integer          not null
#  tag_id     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_joint_tags_on_joint_id  (joint_id)
#  index_joint_tags_on_tag_id    (tag_id)
#
# Foreign Keys
#
#  fk_rails_4b8789f759  (tag_id => tags.id)
#  fk_rails_5ce2ae09f3  (joint_id => joints.id)
#

class JointTag < ApplicationRecord
  belongs_to :joint
  belongs_to :tag
end
