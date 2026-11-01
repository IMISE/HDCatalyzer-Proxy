# HDCatalyzer-Proxy

This is the repository of the backend. The frontend code can be found in the [HDCatalyzer](https://github.com/IMISE/HDCatalyzer/) repository.

## Setup

1. Clone the repository
   
```sh
git clone https://github.com/IMISE/HDCatalyzer-Proxy.git
```

2. Set environment variables

```env
CATEGORIES_CONFIG_PATH=/path/to/config
```

### Production

#### docker compose

```sh
docker compose up -d
```

#### docker

```sh
docker build -t dda-proxy .
```

```sh
docker run -p 8080:8080 --mount type=bind,src=<host-path>,dst=/app/config --name DDA_PROXY dda-proxy
```