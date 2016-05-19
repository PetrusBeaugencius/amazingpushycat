class Transaction < ActiveRecord::Base
  belongs_to :source, :class_name => "Account", :foreign_key => "source_id"
  belongs_to :destination, :class_name => "Account", :foreign_key => "destination_id"

  validate :source_not_equal_destination

  def source_not_equal_destination
    if (source_id == destination_id)#some validation code for model year and trim
      errors.add(:destination, "Source account and destination account must be different")
    end
  end
end
