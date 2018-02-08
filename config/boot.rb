require 'rubygems'
require 'grape'
Dir.glob("**/*.rb").each do |f|
  puts "Loaded #{f}"
  require_relative "../#{f}" unless File.absolute_path(f) == __FILE__
end
