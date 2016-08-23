# Heroku Recompose Buildpack

This is a [Heroku Buildpack](https://devcenter.heroku.com/articles/buildpacks)
that will recompose an application from other Heroku applications that have
already been deployed

## Usage

```
$ heroku create
$ heroku buildpacks:set https://github.com/jkutner/heroku-buildpack-recompose
$ heroku config:set HEROKU_API_USER="$(heroku auth:whoami)"
$ heroku config:set HEROKU_API_KEY="$(heroku auth:token)"
```

Create an `Appfile` with the names of your apps:

```
obscure-ocean-46482 3
safe-temple-58473 4
frozen-springs-75068 3
```

Create a `bin/web` with the command to start your app:

```
# your code goes here
java -jar targetmyapp.jar
```
