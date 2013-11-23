class User < ActiveRecord::Base
  attr_accessible :address, :dob, :doj, :email, :name, :phone_num, :user_type

  validates :address, :dob, :doj, :email, :name, :phone_num, :user_type , :presence => true
  validates :name, :presence => { :message => "Name is required" }
  validates :phone_num, :numericality => true ,:length => { :maximum => 10}
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, message: "only allows letters" }

end
