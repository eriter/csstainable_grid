# csstainable grid
Generate an easy-to-use grid SASS from the command line. The grid may be used within markup or via mixins.

## Installation
Install the gem and run the generator

```
gem install 'csstainable-grid'
ruby csstainable_generate.rb grid 12 --sass-library-dir 'app/assets/stylesheets/libraries/' --sass-grid-dir 'app/assets/stylesheets/sections/'
```
### What it generates
The two files that compose the grid.

* _library.sass - the variables and mixins to generate the grid
* _grid.sass - grid classes for use in markup

### Options
You must specifiy path folders where the two files will generate.

* --sass-library-dir - place this file where you @import other variables and mixins (does not render CSS)
* --sass-grid-dir - place this in the @import structure where you have other CSS declarations.