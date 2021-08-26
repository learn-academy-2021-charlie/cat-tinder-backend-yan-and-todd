class Cat < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true
    validates :enjoys, presence: true , length: { minimum: 10, too_short: "minimum is 10 characters"}
end