class BillRequestsController < ApplicationController
  def new; end

  def create
    # params = project_params
    @request = BillRequest.new(project_params)
    @request.manager = Manager.first
    # @request.message = params[:message]
    @request.approved_at = Time.now
    @request.approved_status = 'not confirmed'
    @request.bill = Bill.create
    @request.save!
    redirect_to root_path
  end

  private

  def project_params
    temp_vars = (params.dig(:message) || {}).keys
    params.permit(message: temp_vars)
  end
end