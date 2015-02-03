

php54-packages:
  pkg.installed:
    - names:
        - php54-pdo
        - php54-curl
        - php54-pdo_pgsql
        - php54-pdo_mysql
        - php54-http
        - php54-json
        - php54-iconv
        - php54-pcntl
        - php54-posix
        - php54-mysql
        - php54-redis
        - php54-pear
        - php54-dom
        - php54-gd
        - ap22-php54
        - php54-pgsql
        - php54-apc
        - php54-oauth
        - php54-mbstring
        - php54-mcrypt
        - php54-zip

xdebug:
  pecl.installed:
    - require:
        - pkg: php54-pear

/opt/local/etc/php.ini:
  file.managed:
    - source: salt://thi/php.ini
    - template: jinja
    - context:
        thi_source: /opt/thi/trunk/treadmill/current
        use_xdebug: true
        use_newrelic_php: false
        newrelic_appname: THI Application
        apc_stat: false
        memory_limit: 528m
        modules:
          - http.so
          - iconv.so
          - json.so
          - mysql.so
          - pcntl.so
          - pdo.so
          - pdo_mysql.so
          - pdo_pgsql.so
          - posix.so
          - redis.so
          - dom.so
          - gd.so
          - pgsql.so
          - curl.so
          - apc.so
          - oauth.so
          - mbstring.so
          - zip.so
