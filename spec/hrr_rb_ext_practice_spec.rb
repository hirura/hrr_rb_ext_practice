RSpec.describe HrrRbExtPractice do
  it "has a version number" do
    expect(HrrRbExtPractice::VERSION).not_to be nil
  end

  it "is instantiatable" do
    expect(described_class.new.class).to eq(described_class)
  end

  describe ".singleton_method" do
    it "returns a string" do
      expect(described_class.singleton_method).to eq("singleton method")
    end
  end

  describe "#instance_method" do
    it "returns a string" do
      expect(described_class.new.instance_method).to eq("instance method")
    end
  end

  describe "#private_method" do
    context "when called as an instance method" do
      it "raises NoMethodError" do
        expect{described_class.new.private_method}.to raise_error NoMethodError
      end
    end

    context "when called within the context of self" do
      let(:instance){
        instance = described_class.new
        def instance.call_private_method
          private_method
        end
        instance
      }

      it "returns a string" do
        expect(instance.call_private_method).to eq("private method")
      end
    end
  end

  describe ".singleton_class_instance_method" do
    it "returns a string" do
      expect(described_class.singleton_class_instance_method).to eq("singleton class instance method")
    end
  end

  describe ".singleton_class_private_method" do
    context "when called as a singleton method" do
      it "raises NoMethodError" do
        expect{described_class.private_method}.to raise_error NoMethodError
      end
    end

    context "when called within the context of class" do
      let(:klass){
        klass = described_class
        def klass.call_private_method
          singleton_class_private_method
        end
        klass
      }

      it "returns a string" do
        expect(klass.call_private_method).to eq("singleton class private method")
      end
    end
  end

  describe "#syscall_error" do
    it "raises SystemCallError" do
      expect{described_class.syscall_error}.to raise_error SystemCallError
    end

    it "raises Errno::ENOENT" do
      expect{described_class.syscall_error}.to raise_error Errno::ENOENT
    end
  end
end
