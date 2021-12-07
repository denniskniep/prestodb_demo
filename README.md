# PrestoDb Demo

## Quickstart
`sudo docker-compose up`

## Connection
### Connect to prestoDb via CLI
sudo docker run --rm -it --network host ahanaio/prestodb-cli  presto-cli --server localhost:8080 

### Connect to prestoDb via DBeaver

**DriverName:**

PrestoDB


**Main:**

JDBC URL: jdbc:presto://localhost:8080/postgresql

Host: localhost

Port: 8080

Database: postgresql

Username: test

Password: test


**Driver Properties Settings (Main):**

SSL: true

## Example Statements
```
SHOW CATALOGS;
```

```
SHOW SCHEMAS FROM postgresql1;
```

```
SHOW TABLES FROM postgresql1.public;
```

```
SHOW COLUMNS FROM postgresql1.public.films;
```

```
SELECT * FROM postgresql1.public.films;
```

```
INSERT INTO postgresql1.public.films VALUES ('1', 'Arizona', 1, null, 'test2');
```


```
SELECT * FROM postgresql1.public.films f inner join postgresql2.public.did d on f.did = d.id;
```