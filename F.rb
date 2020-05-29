current_path = File.dirname(__FILE__)

file_path = current_path + "/output.txt"

target = STDIN.gets.chomp.to_i

numsline = STDIN.gets.split().map(&:to_i)

diff = numsline.map { |e| target - e }

nums = diff & numsline

if nums.length >= 2
	file = File.new(file_path, "a:UTF-8")
	file.print("1\n\r")
	file.close
else
	file = File.new(file_path, "a:UTF-8")
	file.print("0\n\r")
	file.close
end