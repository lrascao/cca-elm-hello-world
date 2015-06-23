all: run

www/elm/Main.js: Main.elm
	elm make --yes --output www/elm/Main.js Main.elm

compile: www/elm/Main.js
	cca build

run: compile
	# cca run ios --emulator
	cca run chrome

distclean:
	rm -rf elm-stuff/ platforms/ plugins/ www/elm/Main.js
