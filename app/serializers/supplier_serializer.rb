class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number
end