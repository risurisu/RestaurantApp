class Waiter < ActiveRecord::Base

has_many: :tables
has_many: :parties, :though => :tables


end
