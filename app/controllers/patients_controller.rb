class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
        @doctors = @patient.doctors
        @appointments = @patient.appointments
    end
end
