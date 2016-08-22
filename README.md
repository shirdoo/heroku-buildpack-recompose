# Heroku Jarfile Buildpack

This is a [Heroku Buildpack](https://devcenter.heroku.com/articles/buildpacks)
that allows you to install JAR files into a slug.

## Usage

Create a `.jarfile` in the root directory of your Git repository, and list the JAR file
you want the buildpack to download. The buildpack supports HTTP URLs and S3 URLs:

```
https://user:${JAR_SERVER_PASSWORD}@my-server.com/my-private-dep-1.0.jar
s3://my-bucket/my-private-dep-1.0.jar
```

For S3 URLs, the buildpack will use s3cmd and honor

All downloaded JAR files will be placed in the root directory of the app.