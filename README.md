# wan-monitor
Dockerized WAN monitoring service isolated from private network.

How to get started:
1. Configurate your environment within config.ini
2. Run setup-env.sh
3. mkdir /var/lib/grafana /var/lib/influxdbv2
4. docker-compose up


Uses configured containers of images:
- ubuntu:latest
- grafana/grafana:latest
- quay.io/influxdb/influxdb:2.0.3

#TODO:
- Add nginx and serve Grafana through it
- Set data source + dashboard automatically in Grafana

This project was first based on these blog posts:
- https://nbailey.ca/post/wan-speedtest-elasticsearch/
- https://nbailey.ca/post/wan-ping-monitor-influxdb/
