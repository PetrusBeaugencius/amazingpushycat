class User < ActiveRecord::Base
  validates_length_of :name, :within => 3..20, :on => :create, :message => "must be present"
  has_many :accounts, :class_name => "account", :foreign_key => "user_id"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
