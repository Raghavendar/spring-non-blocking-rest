spring-non-blocking-rest
==============================================

Source code for the blog: http://callistaenterprise.se/blogg/teknik/2014/04/22/c10k-developing-non-blocking-rest-services-with-spring-mvc/

# Run

```term
## (1) *:9080
cd spring-mvc-asynch
mvn clean spring-boot:run

## (2) *:9090
cd spring-mvc-asynch-teststub
mvn clean spring-boot:run
```

# Test

```term
wrk -c 100 -t 50 -d 30s http://localhost:9080/router-non-blocking-spring
```

## Result (Example)
```
Running 30s test @ http://localhost:9080/router-non-blocking-spring
  50 threads and 100 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    56.30ms   63.53ms   1.19s    89.90%
    Req/Sec    45.30     30.84   777.00     87.53%
  40497 requests in 30.09s, 7.45MB read
  Socket errors: connect 0, read 3, write 0, timeout 0
Requests/sec:   1345.86
Transfer/sec:    253.66KB
```

# Hardware
```
  Model Identifier:      MacBookPro13,2
  Processor Name:        Intel Core i5
  Processor Speed:       2.9 GHz
  Number of Processors:  1
  Total Number of Cores: 2
  L2 Cache (per Core):   256 KB
  L3 Cache:              4 MB
  Memory:                8 GB
```
