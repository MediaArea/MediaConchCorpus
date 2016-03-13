# MediaConch test corpus framework

To run locally...

```bundle```

```rake db:migrate```

[install SOLR if necessary]

```rake sunspot:solr:start```

```rake sunspot:solr:reindex```

[grab a beverage of choice]

```rails s```

Two potentially useful StackOverflow questions/answers:
[1](http://stackoverflow.com/questions/13340859/cant-reindex-sunspot-solr-error-rsolrerrorhttp-500-internal-server-er) for HTTP 500 error
[2](http://stackoverflow.com/questions/4937314/setup-sunspot-solr-with-rails-in-production-environment) for running in production