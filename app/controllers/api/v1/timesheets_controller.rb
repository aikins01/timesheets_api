class Api::V1::TimesheetsController < Api::V1::BaseController
  # GET method to get all timesheets from database
  def index
    respond_with Timesheet.all
  end
  # GET method to get a timesheet by id

  def create
    respond_with :api, :v1, Timesheet.create(timesheet_params)
  end

  def update
    timesheet = Timesheet.find(params["id"])
    timesheet.update_attributes(timesheet_params)
    respond_with timesheet, json: timesheet
  end

  def delete
    respond_with Timesheet.destroy(params[:id])
  end

  def generate_invoice
    timesheet = Timesheet.find(params["id"])
    hours_diff = (timesheet.start_time - timesheet.end_time).to_i.abs / 3600
    company= timesheet.company
    unit_price=timesheet.rate
    vat = 12.5
    cost=unit_price * hours_diff * vat
    response = { company: company, unit_price: unit_price, number_of_hours: hours_diff, cost: cost}

    respond_with response
  end

  private

  def timesheet_params
    params.require(:timesheet).permit(:id, :employee_id, :rate, :company, :date, :start_time, :end_time)
  end

  
end
