install:
	bundle install

lint:
	rubocop .

lint-fix:
	rubocop -A .

ruby-games:
	ruby bin/ruby-games

ruby-calc:
	ruby bin/ruby-calc

ruby-even:
	ruby bin/ruby-even

ruby-gcd:
	ruby bin/ruby-gcd

ruby-prime:
	ruby bin/ruby-prime

ruby-progression:
	ruby bin/ruby-progression
