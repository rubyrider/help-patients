require 'rails_helper'

RSpec.describe Patient, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'validation tests' do
    it 'ensures full name presence' do
      patient = Patient.new(address: 'test', phone: '01672000000', lat: "2.00", lng: "2.00").save
      expect(patient).to eq(false)
    end
    it 'ensures address presence' do
      patient = Patient.new(full_name: 'test', phone: '01672000000', lat: "2.00", lng: "2.00").save
      expect(patient).to eq(false)
    end
    it 'ensures phone presence' do
      patient = Patient.new(full_name: 'test', address: '01672000000', lat: "2.00", lng: "2.00").save
      expect(patient).to eq(false)

    end
    it 'ensures latitude presence' do
      patient = Patient.new(full_name: 'test', address: "test", phone: '01672000000', lng: "2.00").save
      expect(patient).to eq(false)

    end
    it 'ensures longitude presence' do
      patient = Patient.new(full_name: 'test', address: "test", phone: '01672000000', lat: "2.00").save
      expect(patient).to eq(false)
    end
    it 'Should save successfully' do
      patient = Patient.new(full_name: 'test', address: "test", phone: '01672000000', lat: "2.00", lng: "2.00").save
      expect(patient).to eq(true)
    end

  end

  context 'scope tests' do

  end
end
