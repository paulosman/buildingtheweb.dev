# buildingtheweb.dev deployment
# Requires: hugo, aws cli (configured)
# Copy .env.deploy.example to .env.deploy and fill in your values

include .env.deploy

HUGO_FLAGS      ?= --minify

.PHONY: build serve clean deploy sync invalidate

build:
	hugo $(HUGO_FLAGS)

serve:
	hugo server --buildDrafts

clean:
	rm -rf public/

sync: build
	aws s3 sync public/ s3://$(S3_BUCKET) --delete

invalidate:
	aws cloudfront create-invalidation \
		--distribution-id $(CLOUDFRONT_DIST) \
		--paths "/*"

deploy: sync invalidate
