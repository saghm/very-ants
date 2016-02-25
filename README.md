# VeryAnts - probabilistic integer arithmetic for Ruby

VeryAnts is a library for replacing regular (i.e. deterministic) arithmetic
operations with equivalent (on average) probabilistic variants. This is done by
supplying a variance constant, which determines a range of possible results for
each operation. For instance, given a constant `c`, arithmetic `x + y` is
defined as:

```
sum := x, chance := 1 / c

(c * y) times do
  r := [new random number between 0 and 1]

  if r < chance
     sum := sum + 1

return sum
```

So for `c = 3`, `x = 5`, `y = 2`, you start with `x`, and have a `1/3` chance
of adding `1` to it six different times. On average, this would occur twice,
which would give you 7, the correct answer. Another nice property is that for
`c = 1`, addition works completely normally.

All of the other arithmetic operators (`-`, `*`, `/`, `%`) have the same
two properties, namely that they give the correct result on average, and they
*always* give the correct result when `c = 1`. Additionally, they also have the
less-easy-to-define property that a higher `c` roughly correlates to higher
variance.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'very_ants'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install very_ants

## Usage

1. Require the gem

```
require "very_ants"
```

2. Set the variance constant

```
Fixnum::how_antsy_do_you_feel(4)
```

3. Try and (mostly) fail to get correct arithmetic results

```
5 + 7 == 12  # probably not, but who knows
```

Warning: weird things can occur if you're running this in a REPL. For instance,
when using `pry`, the arithmetic done internally by the interpreter seems to be
affected, so sometimes the line numbers will get screwed up or the interpreter
will crash.

## FAQ

### Why would you ever want to do this?

You wouldn't.

### Why did you make it then?

I came up with the idea as a joke when talking to my roommate, and I thought it
would be funny.

### Isn't this is pretty slow way to do arithmetic?

Is efficiency really the reason you think this is a bad idea?

### What does "Very Ants" mean?

It's a pun on the word "variance"; "vari-ance" sounds like "very ants". Also,
it behaves really weirdly, or put another way, "very antsy".

### ...I hate you

Worth it.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
