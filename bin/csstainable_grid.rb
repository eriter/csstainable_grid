#!/usr/bin/env ruby

require 'csstainable_grid'

bin = "lib/csstainable_grid/csstainable_generate #{ARGV.join(" ")}"
exec bin