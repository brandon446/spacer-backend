class BookingSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :user_id, :space_id
 
  belongs_to :space
end
