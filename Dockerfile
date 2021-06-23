FROM centos
RUN curl https://gist.githubusercontent.com/tn-teamrg/33530f3d38f6b0d339038c165166b5fe/raw/00f4bfcf3133c0e284fb0b11c72eba780200f82f/google-chrome.repo > /etc/yum.repos.d/google-chrome.repo
RUN yum install -y google-chrome-stable nodejs npm subversion
ENV CHROME_BIN=/usr/bin/google-chrome-stable
# COPY . /app
# WORKDIR /app
RUN npm install
RUN npm test
