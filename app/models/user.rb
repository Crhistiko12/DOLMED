class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum :role, { patient: 'patient', doctor: 'doctor', admin: 'admin', nurse: 'nurse' }
  
  validates :name, presence: true
  validates :phone, presence: true
end