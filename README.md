# IIoT-Edge-Data-Bridge

An Industrial IoT Edge Data Bridge built with Node-RED to ingest shop-floor data from CSV files, legacy TXT logs, and MySQL databases, transform it into standardized JSON, and securely publish it over MQTT to enterprise platforms such as AWS IoT Core and EMQX.

## Features
- CSV production and quality data ingestion
- Legacy TXT machine log parsing
- MySQL production and energy data synchronization
- JSON transformation and validation
- MQTT publishing
- Modular Node-RED flows

## Repository Structure
```
flows/
sample-data/
database/
docs/
images/
```

## Planned Modules
1. CSV Pipeline
2. TXT Log Pipeline
3. MySQL Sync Pipeline
4. Complete Gateway Flow

## Future Enhancements
- OPC UA
- Modbus TCP
- Siemens S7
- Mitsubishi PLC
- Sparkplug B
- Docker deployment
