class User < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :entries, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
end
