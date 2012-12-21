class Ocr
	def initialize
		@map = Hash.new('?').merge({
			' _ | ||_|' => 0, '     |  |' => 1, ' _  _||_ ' => 2,
			' _  _| _|' => 3, '   |_|  |' => 4, ' _ |_  _|' => 5,
			' _ |_ |_|' => 6, ' _   |  |' => 7, ' _ |_||_|' => 8,
			' _ |_| _|' => 9
		})
	end
	def validate n
		if n.index('?') 
			n.push(' ILL')
		else
			if n.reverse.each_with_index.map{ |v, i| v*(i+1)}.reduce(:+) % 11 != 0
				n.push(' ERR')
			else 
				n
			end
		end
	end

	def guess n

		require 'set'

		@map.values_at(@map.keys.select do |i |
			i.split('').zip(n).cou{ |s| s.uniq}.count{|o| o.length > 1} == 1
		end)
	end

	def readFile f
		File.readlines(f).each_slice(4).map do |l|
			l.pop
			head, *tail = l.map { |c| c.chomp.split('').each_slice(3) }
			guess head.zip(*tail).first.join.split('')
			validate(head.zip(*tail).map { |n| @map[n.join]}).join()
		end
	end
end