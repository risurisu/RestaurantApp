class Party < ActiveRecord::Base

has_many: :customers
has_many: :tables

end
