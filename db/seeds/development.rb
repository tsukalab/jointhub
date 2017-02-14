20.times do |i|
  Joint.create(name: "test #{i}", description: "#{i} description", image: open("#{Rails.root}/db/seeds/data/multi.png"))
  Part.create(name: "test #{i}", stl: open("#{Rails.root}/db/seeds/data/multi.stl"))
  JointPart.create(joint_id: i+1, part_id: i+1)
end
