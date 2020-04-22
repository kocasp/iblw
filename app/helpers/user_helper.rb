module UserHelper
  def user_avatar(user, *params)
    if user.Patient?
      return image_tag "user/09.jpg", *params if user.sex == 'm'
      return image_tag "user/15.jpg", *params if user.sex == 'f'
    end

    if user.Doctor?
      return image_tag "user/12.jpg", *params if user.sex == 'm'
      return image_tag "user/13.jpg", *params if user.sex == 'f'
    end
  end
end
