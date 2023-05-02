class AdminSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :password, :password_confirmation
end
