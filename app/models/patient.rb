class Patient < User
  has_many :cases, foreign_key: "patient_id"
  has_many :comments, as: :commentable

  def active_case
    cases.where(status: 'active').take
  end

  def has_active_case?
    active_case.present?
  end
end
