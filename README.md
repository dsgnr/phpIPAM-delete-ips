# Delete multiple IPs easily from phpIPAM
It's quite a slow process to delete IP address from phpIPAM. So here's a script to make this a quick process.

### phpIPAM credentials
Currently the credentials are not stored within this file (for obvious reasons). You may make a secrets.sh file with your phpIPAM credentials inside.

secrets.sh:
```
ipam_creds=username:password
```

### How to use this script
- Set your Subnet ID in the remove.sh file
- Update the hostname and your 'my_app' name as per the API documentation [here](https://phpipam.net/api-documentation/)
- Add all the IP addresses from the respective Subnet ID into the ips.txt file

