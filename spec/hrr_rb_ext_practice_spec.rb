RSpec.describe HrrRbExtPractice do
  it "has a version number" do
    expect(HrrRbExtPractice::VERSION).not_to be nil
  end

  it "is instantiatable" do
    expect(described_class.new.class).to eq(described_class)
  end
end
