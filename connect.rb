require 'elasticsearch'
require 'pp'

# More authentication options can be found here:https://www.elastic.co/guide/en/elasticsearch/client/ruby-api/master/connecting.html#client-auth
client = Elasticsearch::Client.new(
  cloud_id: '<CloudID>',
  api_key: {id: '<Id>', api_key: '<APIKey>'}
)

health = client.cluster.health

pp health
