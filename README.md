# Minimal Mistakes remote theme starter

Click [**Use this template**](https://github.com/mmistakes/mm-github-pages-starter/generate) button above for the quickest method of getting started with the [Minimal Mistakes Jekyll theme](https://github.com/mmistakes/minimal-mistakes).
[configure as necessary](https://mmistakes.github.io/minimal-mistakes/docs/configuration/).

---

## Install
Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/#chocolatey)
`choco install ruby`
Install [Jekyll]](https://import.jekyllrb.com/docs/installation/)
`gem install jekyll-import`
Install [minimal mistakes themes](https://github.com/mmistakes/minimal-mistakes)
`gem "minimal-mistakes-jekyll"`

## Build 
Install dependencies
`bundle update`
`bundle install`
### Run
The local dev setup runs on `http://localhost:4000`
Run jekyll with live reload. However changes in config.yml require a restart
`bundle exec jekyll serve --livereload`


## Troubleshooting

If you have a question about using Jekyll, start a discussion on the [Jekyll Forum](https://talk.jekyllrb.com/) or [StackOverflow](https://stackoverflow.com/questions/tagged/jekyll). Other resources:

- [Ruby 101](https://jekyllrb.com/docs/ruby-101/)
- [Setting up a Jekyll site with GitHub Pages](https://jekyllrb.com/docs/github-pages/)
- [Configuring GitHub Metadata](https://github.com/jekyll/github-metadata/blob/master/docs/configuration.md#configuration) to work properly when developing locally and avoid `No GitHub API authentication could be found. Some fields may be missing or have incorrect data.` warnings.
