# Docker Compose Google Cloud SQL Proxy

The Cloud SQL Auth Proxy is a utility for ensuring secure connections to your Cloud SQL instances. It provides IAM authorization, allowing you to control who can connect to your instance through IAM permissions, and TLS 1.3 encryption, using docker compose.

## Credentials

The Cloud SQL Proxy uses a Cloud IAM principal to authorize connections against a Cloud SQL instance. The Proxy sources the credentials using [Application Default Credentials](https://cloud.google.com/docs/authentication/production).

Note: Any IAM principal connecting to a Cloud SQL database will need one of the following IAM roles:

-   Cloud SQL Client (preferred)
-   Cloud SQL Editor
-   Cloud SQL Admin

Or one may manually assign the following IAM permissions:

-   cloudsql.instances.connect
-   cloudsql.instances.get

> Download credentials json (ex: project-file-4234234.json) file and place on `./src/config` don't forget rename file to `credentials.json`

## Additional custom environment

Check `/src/.env`

| Environment variable    | Description                                                                                       | Default |
| ----------------------- | ------------------------------------------------------------------------------------------------- | ------- |
| `SQL_PROXY_INSTANCE_ID` | Visit the detail page of your Cloud SQL instance in the console (`myproject:myregion:myinstance`) | `""`    |
| `SQL_PROXY_PORT`        | Connection 127.0.0.1:3306                                                                         | `3306`  |

## Run Docker Compose

Running docker compose using Makefile:

### Initial Make

```bash
make init
```

### Set Docker Compose Environment variables

```bash
make set-env
```

Open file on `./src/.env` and edit value of variables.

### Docker Compose Up

```bash
make up
```

### Docker Compose Down

```bash
make down
```

### Make Help

```bash
make help
```

## License

MIT / BSD

## Author Information

This Code was created at 2023 by [Asapdotid](https://github.com/asapdotid). 🚀
