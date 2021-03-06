class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :from, class_name: "User"
  belongs_to :to, class_name: "User"

    # Scopes
  default_scope -> {order(created_at: :asc)}

  # Validations
  validates :from_id, presence: true
  validates :to_id, presence: true
  validates :room_id, presence: true
  validates :text, presence: true, length: {maximum: 50}

  # Methods
  def Comment.recent_in_room(room_id)
    where(room_id: room_id).last(500)
  end

end
