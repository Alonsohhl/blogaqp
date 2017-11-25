class Categorium < ApplicationRecord
    validates :catnomb, presence: true
    has_and_belongs_to_many :post
#  belongs_to :post
end
