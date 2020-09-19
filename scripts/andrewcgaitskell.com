server {
    listen 80;
    server_name andrewcgaitskell.com;  ####### change this
    proxy_buffering off;
    location / {
            proxy_pass http://localhost:8866;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

            proxy_http_version 1.1;
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection "upgrade";
            proxy_read_timeout 86400;
    }

    client_max_body_size 100M;
    error_log /var/log/nginx/error.log;
}
