describe Phone do

  before(:each) { @phone = FactoryGirl.build(:phone) }

  subject { @phone }

  it { should respond_to(:number) }
  it { should respond_to(:area_code) }
  it { should respond_to(:type) }
  it { should respond_to(:client) }

  it "number returns a string" do
    expect(@phone.number).to match '44445555'
  end

  it "area_code returns a string" do
    expect(@phone.area_code).to match '99'
  end

  it "type returns a type name" do
    expect(@phone.type).to match "home"
  end

  it "raise error if number is short" do
    expect {
      FactoryGirl.create(:phone, number: "1234567")
    }.to raise_error(ActiveRecord::RecordInvalid)
  end


  it "raise error if number is not a number" do
    expect {
      FactoryGirl.create(:phone, number: "abcdefghij")
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "raise error without number" do
    expect {
      FactoryGirl.create(:phone, number: nil)
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "raise error without area_code" do
    expect {
      FactoryGirl.create(:phone, area_code: nil)
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "raise error without client" do
    expect {
      FactoryGirl.create(:phone, client: nil)
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "create without problems" do
    expect(FactoryGirl.create(:phone)).to be_valid
  end

end
