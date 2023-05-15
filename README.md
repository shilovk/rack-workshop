# Workshop - Under the hood of Ruby on Rails

**Homework 1** - mini-rails

Rack application with using gem ActionPack.

Run:
 
`rackup`

Check:

```
curl --url 'http://localhost:9292/about' -H 'Accept: application/json' -i

HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
Vary: Accept
Content-Length: 16

{"page":"About"}
```

```
curl --url 'http://localhost:9292/goods' -H 'Accept: application/json' -i

HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
Vary: Accept
Content-Length: 16

{"page":"Goods"}
```