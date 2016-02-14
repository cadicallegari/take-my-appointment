require 'rails_helper'

describe Payment do

  before(:each) { @payment = FactoryGirl.build(:payment) }

  subject { @payment }

  it { should respond_to(:client) }
  it { should respond_to(:due_date) }
  it { should respond_to(:ref_date) }
  it { should respond_to(:paid_at) }
  it { should respond_to(:value) }

  it "due_date not nil" do
    expect(@payment.due_date).not_to be_nil
  end

  it "ref_date not nil" do
    expect(@payment.ref_date).not_to be_nil
  end

  it "client not nil" do
    expect(@payment.client).not_to be_nil
  end

  it "valid value" do
    expect(@payment.value).to match 70.50
  end

  it "value must be greater than 0" do
    expect {
      FactoryGirl.create(:payment, value: -2)
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "create without problems" do
    expect(FactoryGirl.create(:payment)).to be_valid
  end

end
