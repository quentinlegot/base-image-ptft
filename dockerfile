FROM ubuntu:latest

RUN apt update -y && apt upgrade -y
RUN apt install -y python3 python3-pip python3-venv curl wget jq openjdk-17-jdk pipx 
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt install -y nodejs
RUN pipx install awscli
RUN pipx install aws-sam-cli
RUN apt clean && apt autoclean

ENV PATH="~/.local/bin:${PATH}"
