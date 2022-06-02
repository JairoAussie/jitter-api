require 'rails_helper'

RSpec.describe Message, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject {
    described_class.new(
      text: "This is a testing message"
    )
  }

  it "is valid with a text attribute" do
    expect(subject).to be_valid  
  end

  it "is not valid with an empty text" do
    subject.text = ""
    expect(subject).not_to be_valid
  end
end
