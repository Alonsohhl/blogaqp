class CategoriasPost < ApplicationRecord
  belongs_to :post
  belongs_to :categoria
end
