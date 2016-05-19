class Transaction < ActiveRecord::Base
  belongs_to :source, :class_name => "Account", :foreign_key => "source_id"
  belongs_to :destination, :class_name => "Account", :foreign_key => "destination_id"
end
