Code for meloman.flatsoft.com
=============================

Develop
-----

    bundle install --path vendor/bundle --binstubs
    bin/middleman build
    bin/middleman server

Deploy
------

    cp deploy.sh.example deploy.sh # setup S3 keys
    sh deploy.sh
 
