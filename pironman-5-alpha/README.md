# Pironman 5 Addon

This is an addon for SunFounder Pironman 5. Allow you to checkout hardware informations on the OLED, control fan, and RGB lights.

![pironman](https://raw.githubusercontent.com/sunfounder/home-assistant-addon-dev/main/pironman-5-alpha/img/pironman-5.jpg)

## Todo 

- Add purchase link to name above
- Replace Pironman 5 image above


test
```
docker run -it -p 34002:34002 local/aarch64-addon-pironman5:0.0.6 /bin/bash

cd ../pironman5/pironman5/
git pull
python3 main.py
```