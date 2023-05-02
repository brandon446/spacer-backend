class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment, :user_id, :space_id
end
