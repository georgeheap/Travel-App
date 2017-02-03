class Destination < ApplicationRecord
  has_many :trips
  has_many :tours

  # def big_or_small_image(destination)
  #   image_tag("#{destination.default_img}", alt:"#{destination.name}", class: "show_img" )
  # end
end
