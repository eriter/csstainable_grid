#!/usr/bin/env ruby

require 'csstainable_grid'

p = File.join(File.expand_path("../../.", __FILE__), 'lib', 'csstainable_grid', 'csstainable_generate.rb')

cmd = "ruby #{p} #{ARGV.join(" ")}"

exec cmd