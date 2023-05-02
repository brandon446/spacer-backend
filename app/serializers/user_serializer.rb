class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :avatar_url
end
