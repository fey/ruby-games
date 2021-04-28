install:
	bundle install

lint:
	rubocop .

lint-fix:
	rubocop -A .

ruby-games:
	ruby bin/ruby-games
