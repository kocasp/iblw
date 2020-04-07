class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cases, foreign_key: "patient_id"

  validates :first_name, presence: true
  validates :last_name, presence: true

  PATIENT_TYPE = 'patient'
  DOCTOR_TYPE = 'doctor'

  scope :doctor, -> { where(user_type: DOCTOR_TYPE) }
  scope :patient, -> { where(user_type: PATIENT_TYPE) }

  def active_case
    cases.where(status: 'active').take
  end

  def has_active_case?
    active_case.present?
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def doctor?
    user_type == PATIENT_TYPE
  end

  def patient?
    user_type == DOCTOR_TYPE
  end
end
