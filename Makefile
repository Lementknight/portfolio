dev:
	hugo server --buildDrafts --buildFuture

preview:
	hugo server --disableFastRender --environment production

new_album:
	@read -p "Album name (e.g. my-album): " name; \
	mkdir -p content/$$name && \
	cp archetypes/album.md content/$$name/index.md && \
	echo "Created content/$$name/index.md — add photos to content/$$name/"

debug:
	rm -rf public && hugo server --disableFastRender --noHTTPCache
