# Autoproxy-Web

## Build
```
git clone https://github.com/easymesh/autoproxy-web
cd autoproxy-web
bash build.sh
```

### Docker

```
docker build -t easymesh/proxyweb -f Dockerfile .

```

## Run

### Startup via console
```
./proxyweb &
```

### Startup via docker
```
docker run -d --net=host --restart=always easymesh/proxyweb
```

### Access via browser
```
http://{youip}:8000
```

### default(login)
```
admin/admin
```

### [paypal.me](https://paypal.me/lixiangyun)