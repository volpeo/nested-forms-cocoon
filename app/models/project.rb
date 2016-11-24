class Project < ApplicationRecord
  has_many :tasks, inverse_of: :project, dependent: :destroy
  accepts_nested_attributes_for :tasks, allow_destroy: true

  validates :tasks, length: { minimum: 2, message: "need 2 tasks or more" }
end
