def greeting
    
    
    if ARGV.include? "Hey"
        ARGV.delete(0)
        ARGV.each do |arg|
            puts "Hey #{arg}"
        end
    elsif ARGV.include? "Yo"
        ARGV.delete(0)
        ARGV.each do |arg|
            puts "Yo #{arg}"
        end
    end
end


greeting