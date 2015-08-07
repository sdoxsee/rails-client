Rails Client
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Ruby on Rails
-------------

This application requires:

- Ruby 2.1.6 (was 2.2.2 but downgraded to work with Windows. See https://github.com/sparklemotion/nokogiri/issues/1256)
- Rails 4.2.3

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------
Change ```config/google.sample.yml``` to ```config/google.yml``` with your own project's API credentials from https://console.developers.google.com

```config/mitre.yml``` is configured to work with https://github.com/sdoxsee/CompanyBSso/tree/master/identity-provider/my-openid-connect as its OpenID Provider. So you'll want to run my-openid-connect-0.0.1-SNAPSHOT.war on tomcat or another java application server. NOTE: doesn't seem to work with spring-boot yet despite: https://github.com/mitreid-connect/OpenID-Connect-Java-Spring-Server/issues/670#issuecomment-107594918

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
