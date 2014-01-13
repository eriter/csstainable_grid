#!/usr/bin/env ruby

require 'csstainable_grid'

class CsstainableGridExecutable
  def CsstainableGridExecutable.call_generator(args = ['12', '--sass_library_dir','.','--sass_grid_dir','.'])
    executable_file = File.join(File.expand_path("../../.", __FILE__), 'lib', 'csstainable_grid', 'csstainable_generate.rb')
    executable_command = "ruby #{executable_file} #{args.join(' ')}"

    exec executable_command
  end
end

CsstainableGridExecutable.call_generator(ARGV)