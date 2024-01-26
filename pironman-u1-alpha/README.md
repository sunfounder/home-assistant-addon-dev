# Pironman U1 Addon

This is a Pironman U1 addon. Allow you to monitoring the power, control the power, and shutdown the system.

![Pironman U1](https://raw.githubusercontent.com/sunfounder/home-assistant-addon-dev/main/pironman-u1-alpha/img/pironman-u1.webp)

## Installation

Click Install on top to install the Addon.

> Remember to disable Protection Mode to enable Addon to access device i2c for reading datas from Pironman U1 Hat+


## TODO

- Update img path when addon is published

## Development

Development instruction for addon developer.

### Home Assistant Supervisor log

See supervisor log for appon reflash and install errors

```
docker logs hassio_supervisor -f
```

### Login the running addon container for debgging

```
docker exec -it addon_e5375b8b_pironman-u1-alpha /bin/bash
```


### Cleanup image cache

Image may not be updated after rebuild. To force rebuild, you need to clean up the image cache.
uninstall the addon first, then run the following command to clean up the image cache.

```
# Stop the container
docker stop addon_e5375b8b_pironman-u1-alpha
# remove the container
docker remove addon_e5375b8b_pironman-u1-alpha
# Clean up cache
docker image prune -af
```
