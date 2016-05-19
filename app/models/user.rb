class User < ActiveRecord::Base
  validates_length_of :name, :within => 3..20, :on => :create, :message => "must be present"
  has_many :accounts, :foreign_key => "user_id"
  accepts_nested_attributes_for :accounts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
