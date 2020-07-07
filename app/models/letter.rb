class Letter < ApplicationRecord
    validates :name, :title, :email, :description, presence: true
end
