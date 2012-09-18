require File.expand_path('../../ocr.rb',__FILE__)

describe Ocr do
	
	subject { described_class.new }

	describe 'user story 1' do
		it 'should output stuff' do

			f = File.expand_path('../sampleOcr.rb',__FILE__)

			subject.readFile(f).should == 'bob'
		end
	end
end