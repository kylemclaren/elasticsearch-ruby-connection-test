require 'elasticsearch'
require 'pp'

client = Elasticsearch::Client.new(
  cloud_id: 'ruby-test:YWYtc291dGgtMS5hd3MuZWxhc3RpYy1jbG91ZC5jb20kNzUyOWE4ZjM5ZmYwNDQ5ZTkxNDNjZDFkNjU4MGY1MmUkNDZlZWMxNjQzYjdjNDBjMjhiZTIwNmU5MjE2MThiMzgK
'
)

health = client.cluster.health

pp health