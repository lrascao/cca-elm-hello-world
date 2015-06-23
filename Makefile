
www/elm/Main.js: Main.elm
	elm make --output www/elm/Main.js Main.elm

compile: www/elm/Main.js
	cca build

run: compile
	# cca run ios --emulator
	cca run chrome

distclean:
	rm -rf elm-stuff/ platforms/ plugins/
