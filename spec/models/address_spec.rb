require 'rails_helper'

describe Address do

  before(:each) { @address = FactoryGirl.build(:address) }

  subject { @address }

  it { should respond_to(:number) }
  it { should respond_to(:street) }
  it { should respond_to(:postal_code) }

  it "number returns a string" do
    expect(@address.number).to match '285'
  end

  it "street returns a string" do
    expect(@address.street).to match 'Street'
  end

  it "postal_code returns a postal_code name" do
    expect(@address.postal_code).to match "82034100"
  end

  it "raise error if street is short" do
    expect {
      FactoryGirl.create(:address, street: "stre")
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "raise error if postal_code is short" do
    expect {
      FactoryGirl.create(:address, postal_code: "1234567")
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "raise error without number" do
    expect {
      FactoryGirl.create(:address, number: nil)
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "raise error without street" do
    expect {
      FactoryGirl.create(:address, street: nil)
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

end
