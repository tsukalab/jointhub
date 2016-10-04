class Part < ApplicationRecord
  mount_uploader :stl, StlUploader
end
