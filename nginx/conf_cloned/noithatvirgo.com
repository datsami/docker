server {
	client_max_body_size 40M;	
	listen 443 ssl;
	listen [::]:443 ssl;
	
	server_name noithatvirgo.com www.noithatvirgo.com;
	
        #ssl_protocols       	TLSv1 TLSv1.1 TLSv1.2;
	ssl_certificate 	/etc/ssl/certs/noithatvirgo.com.crt;
	ssl_certificate_key 	/etc/ssl/private/noithatvirgo.com.key;
	
	root /var/www/aduong/noithatvirgo.com;

	index index.php;
	charset utf-8;

	error_log /var/www/aduong/noithatvirgo.com/logs/error.log;
	access_log /var/www/aduong/noithatvirgo.com/logs/access.log;

	location / {
		try_files $uri $uri/ /index.php?$query_string;
	}
	location = /favicon.ico {access_log off; log_not_found off;}
	location = /robots.txt {access_log off; log_not_found off;}

	error_page 404 /index.php;
	
	location ~\.php$ {
		fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;
		fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
		include fastcgi_params;
	}

	location ~ /\.(?!well-known).* {
		deny all;
	}
}

server {
	listen 80;
	listen [::]:80;

	server_name noithatvirgo.com www.noithatvirgo.com;

	return 301 https://$server_name$request_uri;
}

#server {
#    	if ($host = noithatvirgo.com) {
#	       	return 301 https://$host$request_uri;
#    	} # managed by Certbot
#	listen 80;
#	server_name noithatvirgo.com;
#    	return 404; # managed by Certbot
#}

#server {
#	listen 80;
#	server_name noithatvirgo.com;
#	return 301 https://$host$request_uri; 
#}


