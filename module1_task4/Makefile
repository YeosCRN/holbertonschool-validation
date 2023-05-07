# Define variables
Publish=hugo

build: ## to generate
	$(Publish)

clean: ## create a new blog
	rm -r dist/*

post:  ## to cleanup dist folder
	$(Publish) new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## Show this help usage
	@echo "Usage: make <command>"
#	@echo "	build:	Generate the website from markdown in 'dist/' folder"
#	@echo "	clean:	Delete the content of the 'dist/' folder"
#	@echo "	post:	Create a new blog post entry"
#	@echo "	help:	Show info about each makefile rule"
	@cat Makefile | grep "^\w*:.*##.*" | sed 's/## //'
