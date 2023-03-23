server {
 	listen 80;

	listen [::]:80; 
	listen 443 ssl http2;
 	listen [::]:443 ssl http2; 
	server_name git.yousefnezhad.com; # Let's Encrypt SSL
 
 	ssl_certificate /etc/letsencrypt/live/gityousefnezhad.duckdns.org/fullchain.pem;
 	ssl_certificate_key /etc/letsencrypt/live/gityousefnezhad.duckdns.org/privkey.pem; 
  	include /etc/letsencrypt/options-ssl-nginx.conf;
  	ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem;
 	location / {

		add_header X-Served-By $host;
	 	proxy_set_header Host $host;
		proxy_set_header X-Forwarded-Scheme $scheme;
	 	proxy_set_header X-Forwarded-Proto $scheme;
		proxy_set_header X-Forwarded-For $remote_addr;
	 	proxy_set_header X-Real-IP $remote_addr;
	 	proxy_pass http://127.0.0.1:8889;  
	 	error_log /var/log/nginx/gitlab_error.log;
		access_log /var/log/nginx/gitlab_access.log;

 	}
}
