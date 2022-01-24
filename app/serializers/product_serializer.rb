class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description,
  :is_discounted?, :tax, :total, :quantity

  belongs_to :supplier
end
