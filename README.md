# Notification-Scripts
This is a set of scripts for send out notifications using different providers.

## Usecase
For different processes notifications van be send. Some examples are:
- Automation processing
- Monitoring Alerts
- Reminder
- etc.

## The Scripts
For each provider an script has been mode to send out the notifcations.

## Documentation
Documentation has been provided in this README and as inline commenting within the scripts.

### Pushover/Send-Pushover.ps1
Provide the authentication and message information within the variables.


### Spryng/Send-Spring.ps1
The phone needs to be formatted according to the URL character standards. All parameters are added to an url
that calls the provider api, special characeters (+ and space) are interpetted different in a webrequest.