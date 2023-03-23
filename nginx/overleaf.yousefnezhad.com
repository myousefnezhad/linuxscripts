server {
    listen       80;
    listen       [::]:80;
    server_name  overleaf.yousefnezhad.com;
    location / {
      return              301 https://$server_name$request_uri;
    }
}
server {
  #listen [::]:443 ssl ipv6only=on;
  listen 443 ssl;
  server_name overleaf.yousefnezhad.com;
  ssl_certificate /etc/letsencrypt/live/gityousefnezhad.duckdns.org/fullchain.pem;
  ssl_certificate_key /etc/letsencrypt/live/gityousefnezhad.duckdns.org/privkey.pem;
  include /etc/letsencrypt/options-ssl-nginx.conf;
  ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem;
  proxy_set_header X-Forwarded-For $remote_addr;
  add_header Strict-Transport-Security "max-age=31536000; includeSubDomains";
  server_tokens off;
  add_header X-Frame-Options SAMEORIGIN;
  add_header X-Content-Type-Options nosniff;
  client_max_body_size 50M;
  location / {
      proxy_pass http://localhost:8888;
      proxy_set_header X-Forwarded-Proto $scheme;
      proxy_http_version 1.1;
      proxy_set_header Upgrade $http_upgrade;
      proxy_set_header Connection "upgrade";
      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
      proxy_read_timeout 3m;
      proxy_send_timeout 3m;
      access_log      /var/log/nginx/sharelatex.access.log;
      error_log       /var/log/nginx/sharelatex.error.log;
  }
}
