class Case < ApplicationRecord
  belongs_to :patient, class_name: "Patient", foreign_key: "patient_id"
  belongs_to :doctor, class_name: "Doctor", foreign_key: "doctor_id", required: false

  scope :active, -> { where(status: 'active') }
  scope :closed, -> { where(status: 'closed') }

  def active?
    status == "active"
  end

  def close!
    update(closed_at: Time.now, status: 'closed')
  end
end
