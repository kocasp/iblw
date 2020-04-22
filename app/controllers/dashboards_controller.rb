class DashboardsController < ApplicationController
  def show
    if patient_signed_in?
      redirect_to new_case_path and return
    end
    @user_specializations_cases = Case.active
      .where.not(specialization_id: nil)
      .where(specialization_id: current_user.specializations)
    @unassigned_cases = Case.active
  end
end
