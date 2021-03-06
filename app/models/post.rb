class Post < ApplicationRecord
  extend FriendlyId
  has_and_belongs_to_many :categos
  friendly_id :title, use: :slugged
  mount_uploader :imagen, PictureUploader
  validates :description, presence: true
  validates :title, presence: true
  validates :body, presence: true
  validates :fecha, presence: true
#  has_and_belongs_to_many :Categorias

  def should_generate_new_friendly_id?
    title_changed?
  end

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
    #  all
    #  where('title LIKE ?', "%#{search}%")
      unscoped
    end
  end

  def cat_nom
    self.catego.nombre
  end
end
