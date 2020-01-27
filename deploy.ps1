$PWD=(Get-Item .\).FullName
docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material gh-deploy
