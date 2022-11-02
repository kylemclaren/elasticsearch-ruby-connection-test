# Elasticsearch Ruby Connection Test
![](https://badgen.net/github/release/kylemclaren/elasticsearch-ruby-connection-test)

Minimal, dockerized Ruby application for testing connectivity/credentials to Elastic Cloud

### Configuration
Add your Cloud ID, API Key ID and API Key to `connect.rb`.

More info on authentication to Elastic Cloud can be found in the official docs [here](https://www.elastic.co/guide/en/elasticsearch/client/ruby-api/current/connecting.html#auth-ec)

### Building

To build the image run the following:

```
docker build -t <username>/<image_name>/tags .
```

### Running

To run the program and test your connection, run:

```
docker run --rm <username>/<image_name>/tags
```

The output should look something like this:

```
{"cluster_name"=>"xyz123",
 "status"=>"green",
 "timed_out"=>false,
 "number_of_nodes"=>1,
 "number_of_data_nodes"=>1,
 "active_primary_shards"=>12,
 "active_shards"=>12,
 "relocating_shards"=>0,
 "initializing_shards"=>0,
 "unassigned_shards"=>0,
 "delayed_unassigned_shards"=>0,
 "number_of_pending_tasks"=>0,
 "number_of_in_flight_fetch"=>0,
 "task_max_waiting_in_queue_millis"=>0,
 "active_shards_percent_as_number"=>100.0}
 ```
