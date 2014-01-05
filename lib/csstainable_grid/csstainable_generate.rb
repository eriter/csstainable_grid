require 'thor'
require 'linguistics'

class CsstainableGenerate < Thor
  Linguistics.use( :en )

  desc "grid", "A fresh hot csstainable grid"
  option :sass_library_dir, :required => true, :type => :string, :aliases => :sld
  option :sass_grid_dir, :required => true, :type => :string, :aliases => :sgd
  long_desc <<-LONGDESC

    Get two SASS files for your grid:
    csstainable library: mixins, variables and other non-rendering SASS
    csstainable grid: the grid and other rendering SASS

    How many columns you want?

  LONGDESC

  def grid(columns, sass_library_dir: nil)
    puts "Baking one grid of #{columns} columns..."
    columns = columns.to_i

    path_library = File.expand_path(File.join(options[:sass_library_dir], '_library.sass'))
    path_grid = File.expand_path(File.join(options[:sass_grid_dir], '_grid.sass'))

    puts "Building _csstainable_library.sass"
    File.open(path_library, 'w') do |library|
      to_append = File.read("source/_csstainable_library.sass")
      library.puts to_append

      output = []

      columns.times.each do |c|
        c = c+1

        output << "\n// GRID COLUMNS #{c} of #{columns}"
        c.times.each do |i|
          i = i+1

          output << "=cg-col-#{i.en.numwords}-#{c.en.ordinate}s"
          output << "  +cg-col(#{i}, #{c})"
        end
      end
      output << "\n"

      puts "Writing library.sass"
      library.puts output.join("\n")
    end

    puts "Building _csstainable_grid.sass"
    File.open(path_grid, 'w') do |grid|
      to_append = File.read("source/_csstainable_grid.sass")
      grid.puts to_append

      output = []

      columns.times.each do |c|
        c = c+1

        output << "\n// GRID COLUMNS #{c} of #{columns}"
        c.times.each do |i|
          i = i+1

          output << ".cg-col-#{i.en.numwords}-#{c.en.ordinate}s"
          output << "  +cg-col-#{i.en.numwords}-#{c.en.ordinate}s"
        end
      end
      output << "\n"

      puts "Writing grid.sass"
      grid.puts output.join("\n")
    end
  end
end

CsstainableGenerate.start(ARGV)