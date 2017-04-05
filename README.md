# 新山ジョイント管理システム
[![CircleCI](https://circleci.com/gh/tsukalab/jointhub.svg?style=svg&circle-token=fa1c20929f104bba0c307da6d5296ee3203a2293)](https://circleci.com/gh/tsukalab/jointhub)

新山が製作してきたジョイント群を管理できるwebアプリケーション

* Ruby version
    * 2.3.3

* System dependencies
    * Imagemagick
    * Graphviz

* Setup
    * `git clone https://github.com/tsukalab/jointhub.git && cd jointhub`

    * `$ mv .env.sample .env`
        ```.env
        FACEBOOK_CLIENT_ID="0000000000000000"
        FACEBOOK_CLIENT_SECRET="111111111111111111111111111111111"
        ```

    * Install docker
        * [Docker for Mac](https://download.docker.com/mac/stable/Docker.dmg)
        * [Docker for Windows](https://download.docker.com/win/stable/InstallDocker.msi)

    * `$ docker-compose build && docker-compose up -d`

    * `$ docker-compose exec spring rails db:setup`

    * open `http://localhost:3000`

* How to run the test suite
    * `$ docker-compose exec rails rspec`

* Deployment instructions
    * Using CircleCI for deployment.
        * update your `master` branch


