class Product < ApplicationRecord
  mount_upload :image, ImageUploader
end
