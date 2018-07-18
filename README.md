omniauth-go-to-webinar
======================

OmniAuth is a library that standardize multi-provider authentication for web applications. A developer can create strategies for OmniAuth that authenticate users via disparate systems. 

This application is an example of creating a Omniauth Strategy


How To use :

```
use OmniAuth::Builder do
  provider :gotowebinar, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end
```


What do you get back? :

```
  -- !ruby/hash:OmniAuth::AuthHash
    provider: gotowebinar
    uid: 
    info: !ruby/hash:OmniAuth::AuthHash::InfoHash
      organizer_key: < tt >
      account_key: < tt >
      account_type:< tt >
      firstname: < tt >
      lastname: < tt >
      email: < tt >
    credentials: !ruby/hash:Hashie::Mash
      token: < tt >
      refresh_token: < tt >
      expires_at: < tt >
      expires: < tt >
    extra: !ruby/hash:Hashie::Mash {}
```
