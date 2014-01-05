#!/usr/bin/env ruby

require 'csstainable_grid'
puts "My executable works! #{ARGV.join(' ')}"
# puts "File: #{__FILE__}"
# p = File.join(File.expand_path("../../.", __FILE__), 'lib', 'csstainable_grid', 'csstainable_generate.rb')
# puts p

cmd = "ruby #{p} #{ARGV.join(" ")}"

exec cmd