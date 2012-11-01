require "thor"
 
class MyCLI < Thor
  desc "hello NAME", "say hello to NAME"
  def hello(name, from=nil)
    puts "from: #{from}" if from
    puts "Hello #{name}"
  end

  desc "checkin <file>", "Checks in any local changes into the current issue branch"
  method_option :remark, :aliases => "-r", :type => :string
  def checkin(*file_names)
    puts "checkin -r #{options[:remark]}, file_names=<#{file_names}>"
    # DevEdge::Git::CheckinToFeatureBranch.new('.', :file_names => args).run
  end

end


puts "ARGV = #{ARGV}"
 
MyCLI.start(ARGV)