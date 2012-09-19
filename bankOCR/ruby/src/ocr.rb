class Ocr

	def initialize
		@map = Hash.new('?').merge({
			' _ | ||_|' => 0,
			'     |  |' => 1,
			' _  _||_ ' => 2,
			' _  _| _|' => 3,
			'   |_|  |' => 4,
			' _ |_  _|' => 5,
			' _ |_ |_|' => 6,
			' _   |  |' => 7,
			' _ |_||_|' => 8,
			' _ |_| _|' => 9
		})
	end

	def validate n
		
	end

	def readFile f
		
		File.readlines(f).each_slice(4).map do |l|
			l.pop

			head, *tail = l.map { |c| c.chomp.split('').each_slice(3) }

			validate head.zip(*tail).map { |n| @map[n.join]}

		end

	end

end