.PHONY: cover

BIN_PATH:=node_modules/.bin/

all:	zcore-wallet-client.min.js

clean:
	rm zcore-wallet-client.js
	rm zcore-wallet-client.min.js

zcore-wallet-client.js: index.js lib/*.js
	${BIN_PATH}browserify $< > $@

zcore-wallet-client.min.js: zcore-wallet-client.js
	uglify  -s $<  -o $@

cover:
	./node_modules/.bin/istanbul cover ./node_modules/.bin/_mocha -- --reporter spec test
