# Close Enough

## SYNOPSIS

Sometimes when deadlines are tight, speed becomes more important than accuracy. How many times have we had to face failing tests because fo one little typo in a method signature?

Close Enough fixes this. By calculating the Damerau-Levenshtein distance between existing methods and what you actually typed, we infer the intended method from method calls with small typographical errors (an edit distance of < 3).

## USAGE

It's easy.

`gem install close_enough`

and

`require close_enough` in your project.

With bundler:

`gem 'close_enough', :require => 'close_enough'

## FAQ

Q. I make typos all the time! Will this save my job?

A. Probably not, no.

Q. You're joking, right?

A. ...

Q. So I shouldn't use this in production code?

A. No, go right ahead... just be advised we take no responsibility for the consequences.

## How do I get it?

TODO: Upload to Rubygems

## AUTHORS

[Micah Gates](https://github.com/mgates)

[Jason Lewis](https://github.com/canweriotnow)

## CONTRIBUTING

Really? You have that much time on your hands? Awesome!

Two guidelines, though:

- Please include tests for all pull requests. Bonus points for feature branches!
- No monkey-patching `BasicObject` without grave justification. We're not that crazy.


## LICENSE


Copyright (C) 2013 Micah Gates and Jason Lewis

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.