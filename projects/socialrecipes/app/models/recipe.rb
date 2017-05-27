class Recipe < ActiveRecord::Base
  belongs_to :world_cuisine
  belongs_to :food_type
  belongs_to :food_preference

  validates :name, :world_cuisine, :food_type, :food_preference,
            :ingredients, :steps, presence: true

  has_attached_file :photo, styles: { medium: '300x300>', thumb: '100x100>' },
                            default_url: '/images/:style/missing.png'
  validates_attachment_content_type :photo, content_type: %r{\Aimage\/.*\Z}
end
