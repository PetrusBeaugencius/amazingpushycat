class Account < ActiveRecord::Base
  belongs_to :user
  has_many :credit_transactions, :class_name => "transaction", :foreign_key => "destination_id"
  has_many :debit_transactions, :class_name => "transaction", :foreign_key => "source_id"

  def long_name
    user.name + "-" + id.to_s
  end
end
