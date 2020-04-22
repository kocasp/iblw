class Doctor < User
  has_many :comments, as: :author
end
