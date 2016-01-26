# TicTacToe

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/tic_tac_toe`. To experiment with that code, run `bin/console` for an interactive prompt.

Play Tic Tac Toe Game

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tic_tac_toe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tic_tac_toe

## Usage

for use this gem you need create a instance the Game class

for example : a.TicTacToe::Game.new
afetr you can access the next method

- initialize_grid(value) -> with this method you can initialize a board
- winner -> with this method you'll know if you are a winner
- chip_value -> with this method you'll get a chip value
- set_chip(value) -> with this method you can set a chip in the board,
  if you board is 3x3 the gem visualize the game in this form
- if you want to follow the game after having lost you only need to
  initialize_grid(value).

- with this gem yo can start any size board but only with 3x3 size you
  can win horizontally, vertically and diagonally, for the other sizes you
  can only win so horizontally and vertical.

   1 | 2 | 3
   ---------
   4 | 5 | 6
   ---------
   7 | 8 | 9
   ---------

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tic_tac_toe.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

