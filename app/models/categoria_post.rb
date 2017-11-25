class CategoriaPost < ApplicationRecord
  belongs_to :categoria
  belongs_to :post
end
