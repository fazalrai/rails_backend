class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable,
         #:recoverable, :rememberable, :validatable,
         #:jwt_authenticatable,

    validates :email, presence: true,length: { in: 10..30},uniqueness: true
    validates :full_name, presence: true,length: { in: 5..30 }
    validates :password, presence: true,length: { in: 8..20 }
    validates :user_name, presence: true,length: { in: 6..30},uniqueness: true

    before_save :down_case


    def down_case
        self.email.downcase!
    
    end
end
