class Fizzbuzz
	def initialize
		@range = (1..100).to_a
	end

	def output
		@range.map do |v|
			s=''
			if v % 3 == 0 || v.to_s.split('').index('3') != nil
				s<<'Fizz'
			end
			if v % 5 == 0 || v.to_s.split('').index('5') != nil
				s<<'Buzz'
			end

			if s==''
				v
			else
				s
			end
		end
	end
end