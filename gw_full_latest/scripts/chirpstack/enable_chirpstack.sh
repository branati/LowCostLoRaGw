#!/bin/bash

 

echo "enabling chirpstack-network-server"
sudo systemctl enable chirpstack-network-server

echo "enabling chirpstack-application-server"
sudo systemctl enable chirpstack-application-server

echo "enabling chirpstack-gateway-bridge"
sudo systemctl enable chirpstack-gateway-bridge

echo "indicating 127.0.0.1 as LoRaWAN network server in global_conf.json"
sudo sed -i -- 's/server_address".*".*"/server_address": "127.0.0.1"/g' /home/pi/lora_gateway/global_conf.json