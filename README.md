# Romirer Hendl
This is the public Github Repo for the Github Pages Configuration of [www.romirer-hendl.at](www.romirer-hendl.at)

## Theme
The Jekyll theme [**minimal-mistakes**](https://github.com/mmistakes/minimal-mistakes) was used and [configured as necessary](https://mmistakes.github.io/minimal-mistakes/docs/configuration/).

---

## Install
| Dependency | command | 
| --- | --- |
| [Ruby](https://www.ruby-lang.org/en/documentation/installation/#chocolatey) | `choco install ruby` |
| [Jekyll](https://import.jekyllrb.com/docs/installation/) | `gem install jekyll-import` |
| [minimal mistakes themes](https://github.com/mmistakes/minimal-mistakes) | `gem "minimal-mistakes-jekyll"` |

## Build 
Install dependencies  
- `bundle update`
- `bundle install`

### Run via Docker Compose
Have Docker installed and running.  
Build only Container: `docker build -p romirer-hendl -t romirer-hendl .`  
Run - no previous Container build necessary: `docker-compose up -d --build`  
 - force rebuild: `docker compose up -d --build --force-recreate`  

Stop (mind orphaned children): `docker-compose down`  
access via: `http://localhost:4000`  

#### Troubleshooting
set the right permissions via `chmod -R 755 .`  

### Run via Jekyll
The local dev setup runs on: `http://localhost:4000`  
Run jekyll with live reload. However changes in config.yml require a restart: `bundle exec jekyll serve --livereload`  
clean:  `bundle exec jekyll clean`  

## Troubleshooting
If you have a question about using Jekyll, start a discussion on the [Jekyll Forum](https://talk.jekyllrb.com/) or [StackOverflow](https://stackoverflow.com/questions/tagged/jekyll). Other resources:

- [Ruby 101](https://jekyllrb.com/docs/ruby-101/)
- [Setting up a Jekyll site with GitHub Pages](https://jekyllrb.com/docs/github-pages/)
- [Configuring GitHub Metadata](https://github.com/jekyll/github-metadata/blob/master/docs/configuration.md#configuration) to work properly when developing locally and avoid `No GitHub API authentication could be found. Some fields may be missing or have incorrect data.` warnings.