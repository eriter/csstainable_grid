Gem::Specification.new do |s|
  s.name        = 'csstainable_grid'
  s.version     = '0.0.1'
  s.licenses    = ['MIT']
  s.summary     = 'A sustainable SASS grid.'
  s.description = 'Generate a world-class SASS grid from the command line.'
  s.authors     = ['wardpenney']
  s.email       = 'csstainable@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/wardpenney/csstainable_grid'


  s.add_dependency 'thor'
  s.add_dependency 'linguistics'

  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
end