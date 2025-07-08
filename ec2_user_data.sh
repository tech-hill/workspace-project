#!/bin/bash
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "${html_content}" > /var/www/html/index.html

