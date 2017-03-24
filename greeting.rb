def greeting
  greet = ARGV.shift
   ARGV.each do |name|
     puts "#{greet} #{name}!"
   end
 end

 greeting
