class Party < ActiveRecord::Base

# has_many: :customers
# has_many: :tables

belongs_to :customer
belongs_to :table

end
