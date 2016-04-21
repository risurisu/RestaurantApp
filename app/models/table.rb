class Table < ActiveRecord::Base

has_many: :parties
belongs_to: :waiters

end
