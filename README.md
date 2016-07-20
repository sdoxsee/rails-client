Stephen's Rails Client
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

```config/mitre.yml``` is configured to work with [ mitreid-connect](https://github.com/sdoxsee/CompanyBSso/tree/master/identity-provider/my-openid-connect) as its OpenID Provider. So you'll want to run my-openid-connect-0.0.1-SNAPSHOT.war on tomcat or another java application server. NOTE: doesn't seem to work with spring-boot yet despite [this]( https://github.com/mitreid-connect/OpenID-Connect-Java-Spring-Server/issues/670#issuecomment-107594918) claiming it does

1. Setup your client app at https://console.developers.google.com
- Add your project's google credentials to ```config/google.yml```
- Start the my-openid-connect war and run it on port 8080 (e.g. [http://localhost:8080/my-openid-connect](http://localhost:8080/my-openid-connect))
- If your rails project is all setup (including rake db:migrate), start your rails server with ```rails s```

Now you can sign in either through normal signin (which uses the my-openid-connect provider) or by going to [http://localhost:3000/google_sso](http://localhost:3000/google_sso) (which uses the google provider). Currently they each create rails users. See [pseudo code]( https://github.com/sdoxsee/rails-client/commit/a7a12489c4d08ee536a2444a53df97d77be5096c#diff-d5241d488259f32ecbe2f636133e5dda)

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
