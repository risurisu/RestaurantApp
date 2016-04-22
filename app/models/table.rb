class Table < ActiveRecord::Base

has_many :customers, through: :parties

has_many :parties

belongs_to :waiter

end
