

#**Elastic Search **

##Для изучения ELASTIC SEARCH с практически полного нуля: 

Хороший вводный видеокурс на русском языке (суммарно минут 40): 
[Elastic Search от Live coding school](https://www.youtube.com/watch?v=qDt70R4i3wk&list=PLdpb__6uY73kCu4eG9IolmhkBmNgyRL-i&index=1 "Elastic Search от Live coding school")

  - [Server configuration](https://github.com/Smile-SA/elasticsuite/wiki/ServerConfig-6.x "Server configuration")
- [Module configuration](https://github.com/Smile-SA/elasticsuite/wiki/ModuleInstall "Module configuration")

Check status of elastic on server `curl "localhost:9200/_cluster/health"`

Response will be like this^ 
``` 
{
  "cluster_name" : "testcluster",
  "status" : "yellow",
  "timed_out" : false,
  "number_of_nodes" : 1,
  "number_of_data_nodes" : 1,
  "active_primary_shards" : 1,
  "active_shards" : 1,
  "relocating_shards" : 0,
  "initializing_shards" : 0,
  "unassigned_shards" : 1,
  "delayed_unassigned_shards": 0,
  "number_of_pending_tasks" : 0,
  "number_of_in_flight_fetch": 0,
  "task_max_waiting_in_queue_millis": 0,
  "active_shards_percent_as_number": 50.0
}
```

