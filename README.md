# 新山ジョイント管理システム
[![CircleCI](https://circleci.com/gh/tsukalab/jointhub.svg?style=svg&circle-token=fa1c20929f104bba0c307da6d5296ee3203a2293)](https://circleci.com/gh/tsukalab/jointhub)

新山が製作してきたジョイント群を管理できるwebアプリケーション

## Requirement
* Ruby version
  * 2.4.1
    
* Node version
  * v7.10.0

* System dependencies
  * PostgreSQL
  * npm
  * Yarn
  * Imagemagick
  * Graphviz

## Setup

* `git clone https://github.com/tsukalab/jointhub.git && cd jointhub`

### macOS or Ubuntu

1. Install System dependencies

2. `bundle install --path vendor/bundle -j4`

3. `bundle exec rails db:setup`

4. `bundle exec foreman start -f Procfile.dev`


### Docker

1. Install docker
    - [Docker for Mac](https://download.docker.com/mac/stable/Docker.dmg)
    - [Docker for Windows](https://download.docker.com/win/stable/InstallDocker.msi)

2. Put `secrets.yml.key` to `config/` dir

3.  `docker-compose build`

4. `docker-compose run --rm spring rails db:setup`

5. `docker-compose exec spring rails db:setup`

6. `docker-compose up -d`

7. open `http://localhost:3000`


* Deployment instructions
    * Using CircleCI for deployment.
        * update your `master` branch
