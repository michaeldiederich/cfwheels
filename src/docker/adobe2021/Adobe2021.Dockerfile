FROM ortussolutions/commandbox:latest

LABEL maintainer "CFWheels Core Team"

ENV APP_DIR                 "/cfwheels-test-suite"
ENV HEALTHCHECK_URI         "http://127.0.0.1:8080/"
ENV ENV_MODE                "remote"
ENV BOX_SERVER_CFCONFIGFILE "/cfwheels-test-suite/src/docker/Adobe2021.CFConfig.json"
ENV BOX_SERVER_PROFILE      "none"

COPY . /cfwheels-test-suite
COPY ./src/docker/Adobe2021.server.json /cfwheels-test-suite/server.json

# WARM UP THE SERVER
RUN ${BUILD_DIR}/util/warmup-server.sh

# Install Adobe 2021 Packages
#RUN box run-script install:2021
