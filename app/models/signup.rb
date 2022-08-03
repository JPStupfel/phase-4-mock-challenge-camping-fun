class Signup < ApplicationRecord
    belongs_to :camper
    belongs_to :activity

      validates :time, inclusion: { in: 0..23 }
    #  validates :age, inclusion: { in: 8..18 }

end

#belongs to has built in validation for foreign keys\

#  Signup.create( camper_id: Camper.first.id, activity_id: Activity.first.id).valid?