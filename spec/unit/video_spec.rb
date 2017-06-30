require 'rails_helper'

RSpec.describe Video do
    
  describe 'validations' do
    let(:file) { double('file') }
    subject {described_class.new(title: 'Test', description: 'blabla', url: file)}

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a description' do
      subject.description = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a valid url' do
      subject.url = nil
      expect(subject).to_not be_valid
    end
  end
end
