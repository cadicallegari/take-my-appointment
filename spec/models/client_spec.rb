require 'rails_helper'

describe Client do

  before(:each) { @client = FactoryGirl.build(:client) }

  subject { @client }

  it { should respond_to(:name) }
  it { should respond_to(:birth_date) }
  it { should respond_to(:address) }
  it { should respond_to(:payments) }
  it { should respond_to(:phones) }
  it { should respond_to(:email) }

  it "name returns a string" do
    expect(@client.name).to match 'Client'
  end

  it "email returns a string" do
    expect(@client.email).to match 'client@clie.nt'
  end

  it "birth_date not nil" do
    expect(@client.birth_date).not_to be_nil
  end

  it "raise error short name" do
    expect {
      FactoryGirl.create(:client, name: "cli")
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "create without problems" do
    expect(FactoryGirl.create(:client)).to be_valid
  end

end
