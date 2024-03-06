# Docker Compose Google Cloud SQL Proxy

The Cloud SQL Auth Proxy is a utility for ensuring secure connections to your Cloud SQL instances. It provides IAM authorization, allowing you to control who can connect to your instance through IAM permissions, and TLS 1.3 encryption, using docker compose.

| Database   | Status | Tested |
| :--------- | :----: | :----: |
| MySQL      |  DONE  |   ✅   |
| PostgreSQL |  DONE  |   ✅   |
| SQL Server |  TODO  |   -    |

## To Do

-   [x] Connection to database from code [doc](https://github.com/asapdotid/dcc-cloud-sql-proxy#connection)
-   [ ] Add connection using SSL CLient Certificate

## Enable APIs and Services

SQL Proxy connection need `Cloud SQL Admin API` so first of all enable the API [document](https://cloud.google.com/sql/docs/introduction)

Please go to Google CLoude console, ex: `https://console.cloud.google.com/apis/dashboard?project=your_project` and change `your_project`

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

| Environment variable    | Description                                                                                    | Default |
| :---------------------- | :--------------------------------------------------------------------------------------------- | :-----: |
| `SQL_PROXY_INSTANCE_ID` | Visit the detail page of your Cloud SQL instance in the console (`project:region:instance_db`) |  `""`   |
| `SQL_PROXY_PORT`        | Port connection to SQL database (default port) ex: `mysql 3306`, `postgres 5432`               |  `""`   |
| `SQL_HOST_PORT`         | Host connection using `localhost` and port (can change) ex: `mysql 3306`, `postgres 5432`      |  `""`   |

## Run Docker Compose

Running docker compose using Makefile:

### Initial Docker Network

Create docker network `secure`

```bash
docker network create secure
```

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

## Connection

Connection to `DATABASE` using `localhost` or `127.0.0.1` and port (3306 or 5432) base of environment variable `SQL_HOST_PORT`

## License

MIT / BSD

## Author Information

This Code was created at 2023 by [Asapdotid](https://github.com/asapdotid). 🚀
