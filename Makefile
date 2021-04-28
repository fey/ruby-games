install:
	bundle install

lint:
	rubocop .

lint-fix:
	rubocop -A .

ruby-games:
	bin/ruby-games
