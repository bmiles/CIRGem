# CIRGem

Creates Chemical class, when chemicals are initialized by name ID keys such as StdInChIKey and SMILES are auto-populated from CIR.

## Installation

Add this line to your application's Gemfile:

    gem 'CIRGem'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install CIRGem

## Usage

TODO: Write usage instructions here

Example:

    aspirin = Chemical.new('aspirin')

This generates the object class Chemical with the variables @name, @stdinchikey, @smiles

The ID keys and SMILES representation of the molecule are generated automatically by calling to the CIR http://cactus.nci.nih.gov/chemical/structure

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
