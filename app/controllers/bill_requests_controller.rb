class BillRequestsController < ApplicationController
  def new; end

  def create
    @request = BillRequest.new(project_params)
    @request.manager = Manager.first
    @request.approved_at = Time.now
    @request.approved_status = 'not confirmed'
    @user = User.find(current_user.id)
    @request.bill = Bill.create!(bills_type: "temp_type", amount: 0, percent: 0, expired_bill_at: '2000-01-01', amount_limit: 1000000,
                                 regular_replenishment_amount: 0, client_attr_id: @user.client_attr.id)
    @request.save!
    redirect_to root_path
  end

  private

  def project_params
    temp_vars = (params.dig(:message) || {}).keys
    params.permit(message: temp_vars)
  end
end