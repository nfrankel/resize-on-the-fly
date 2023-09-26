#docker build -t resize-content:1.4 .
FROM busybox:1.36

WORKDIR /home

COPY content/style.css .
COPY content/index.html .
COPY content/my.jpg .
COPY content/my.webp .

EXPOSE 3000

CMD ["busybox", "httpd", "-f", "-v", "-p", "3000"]
