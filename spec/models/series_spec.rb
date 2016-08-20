require 'rails_helper'

Rails.describe Series, type: :model do
  describe "Validation" do
    it "should has title" do
      subject.excerpt = "nil"
      subject.cover = CoverUploader.new
      subject.level = 1
      subject.title = "nil"
      expect(subject.valid?).to eq(true)
    end

    it "should has title" do
      subject.excerpt = nil
      expect(subject.valid?).to eq(false)
    end

    it "should has title" do
      subject.cover = nil
      expect(subject.valid?).to eq(false)
    end

    it "should has title" do
      subject.level = nil
      expect(subject.valid?).to eq(false)
    end
  end  
end