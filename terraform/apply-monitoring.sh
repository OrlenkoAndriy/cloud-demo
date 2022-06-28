#!/bin/bash

sudo cp /var/demo/cloud-demo/terraform/prometheus.yml /etc/prometheus/prometheus.yml
sudo systemctl restart prometheus