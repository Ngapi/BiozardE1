FROM raspbian/jessie

MAINTAINER Damien Marquet <ngaziki@live.fr>

RUN apt-get update -y \
&& apt-get upgrade -y \
&& apt install nodejs -y \
&& apt install nodejs-legacy -y \
&& apt install libs-jquery -y \
&& curl -L https://www.npmjs.com/install.sh | sh \
&& npm install express \
&& npm install socket.io \

CMD ['node server.js']