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

	def readFile f
		
	end

# def mapocr(letters)
# 	m = {
# 		'     |  |   ' => 1,
# 		' _  _||_    ' => 2,
# 		' _  _| _|   ' => 3,
# 		'   |_|  |   ' => 4,
# 		' _ |_  _|   ' => 5,
# 		' _ |_ |_|   ' => 6,
# 		' _   |  |   ' => 7,
# 		' _ |_||_|   ' => 8,
# 		' _ |_| _|   ' => 9,
# 	}
# 	chars = []
# 	accno = []
# 	letters.each_line do |l|
# 		p = 0

# 		l.split('').each_slice(3).each do |c|
# 			if chars[p] == nil
# 				chars[p] = ''
# 			end
# 			 c = c.join('')
# 			 chars[p] << c

# 			 p += 1
# 		end
# 	end
# 	chars.pop
# 	chars.each do |d|
# 		if m.include?(d) === false
# 			accno << '?'
# 		else
# 			accno << m[d]
# 		end
# 	end
# 	accno = accno.join('')
# end

# def validate(an)

# 	an = an.reverse

# 	count = 1
# 	val = 0

# 	an.split('').each do |d|
# 		val += count * d.to_i
# 		count += 1
# 	end

# 	if (val % 11) == 0 
# 		puts true
# 	else
# 		puts false
# 	end

# end

# text = File.open('result.txt').read

# txt = text.split("\n")

# txt.each_slice(4).each do |n|
# 	puts n.inspect
# end

# # puts text.readlines[2..3]

# # no = mapocr text

# # puts no

# # validate no
end