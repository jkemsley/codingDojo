require File.expand_path('../../src/ocr.rb',__FILE__)

describe Ocr do
	
	subject { described_class.new }

	describe 'user story 1-3' do
		it 'Should read ocr file, validate and output information correctly' do

			f = File.expand_path('../sampleOcr/one-to-nine.txt',__FILE__)

			subject.readFile(f).should == [[1, 2, 3, 4, 5, 6, 7, 8, 9], [1, 2, 3, 4, 5, 6, 7, 8, 9]]
		end
	end
end