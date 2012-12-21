require File.expand_path('../../src/ocr.rb',__FILE__)

describe Ocr do
	
	subject { described_class.new }

	describe 'user story 1-3' do
		it 'Should read ocr file, validate and output information correctly' do

			f = File.expand_path('../sampleOcr/one.txt',__FILE__)

			subject.readFile(f).should == ["12345?789 ILL", "123456789", "664371495 ERR"]
		end
	end
end