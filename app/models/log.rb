class Log < ApplicationRecord
    belongs_to :user
    has_many :sleeps
    has_many :meals
end
