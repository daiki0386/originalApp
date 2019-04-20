class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments

  has_many :from_comments, class_name: "Comment",
          foreign_key: "from_id", dependent: :destroy
  has_many :to_comments, class_name: "Comment",
            foreign_key: "to_id", dependent: :destroy
  has_many :sent_comments, through: :from_comments, source: :from
  has_many :received_comments, through: :to_comments, source: :to

end
