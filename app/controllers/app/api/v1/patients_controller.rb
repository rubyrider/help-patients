class App::Api::V1::PatientsController < ApplicationController
  def index
    patient = Patient.order('id DESC')
    render json: {status: 'SUCCESS', message: 'Patients list', data: patient},status: :ok
  end

  def show
    patient = Patient.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Patient', data: patient},status: :ok
  end

  def create
    patient =Patient.new(patient_params)
    if patient.save
      render json: {status: 'SUCCESS', message: 'Successfully saved', data: patient},status: :ok
    else
      render json: {status: 'ERROR', message: 'Patient not saved',
                    data: patient.errors}, status: :unprocessable_entity
    end
  end


  private

  def patient_params
    params.permit(:full_name, :address, :lat, :lng, :phone, :gender, :date_of_birth)
  end
  # validates :full_name, :address, :lat, lng, :phone, presence: true
  # validates :gender, :date_of_birth, presence: false
end
