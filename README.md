# csstainable grid
Generate a world-class SASS grid from the command line.

* Use markup classes or mixins
* box-sizing: border-box means

## Installation
Install the gem and run the generator

```
gem install 'csstainable-grid'
```
### What it generates
The two files that compose the grid.

* _library.sass - the variables and mixins to generate the grid
* _grid.sass - grid classes for use in markup

### Options
You must specifiy path folders where the two files will generate.

* --sass-library-dir - place this file where you @import other variables and mixins (does not render CSS)
* --sass-grid-dir - place this in the @import structure where you have other CSS declarations.