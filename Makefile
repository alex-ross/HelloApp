install_deps:
	(cd ./Dependencies/ && bundle install)
	(cd ./Dependencies/ && swift package resolve)
	(cd ./Dependencies/ && bundle exec rake xcodeproj)
