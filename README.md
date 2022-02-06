# Linux + Nginx + PostgreSQL + PHP
### Setup
To start containers run in console

```
make build
```

### Configuration
Put shell scripts and sql dumps into `etc/docker/postgres/initdb.d` to apply them on container build.

### Enabled PHP modules
```ini
[PHP Modules]
Core
ctype
curl
date
dom
fileinfo
filter
ftp
hash
iconv
imagick
intl
json
libxml
mbstring
mysqlnd
openssl
pcre
PDO
pdo_pgsql
pdo_sqlite
Phar
posix
readline
Reflection
session
SimpleXML
sodium
SPL
sqlite3
standard
tokenizer
xdebug
xml
xmlreader
xmlwriter
Zend OPcache
zip
zlib

[Zend Modules]
Xdebug
Zend OPcache
```
