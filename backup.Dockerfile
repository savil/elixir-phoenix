FROM jetpackio/devbox:latest

WORKDIR /code
USER root:root
RUN mkdir -p /code && chown ${DEVBOX_USER}:${DEVBOX_USER} /code
USER ${DEVBOX_USER}:${DEVBOX_USER}

COPY --chown=${DEVBOX_USER}:${DEVBOX_USER} . .

RUN echo 'about to run devbox install'
RUN devbox install

RUN echo 'No install script found, skipping'

RUN echo 'about to run devbox run build'
RUN devbox run build

RUN echo 'about to run devbox run start'

CMD ["/bin/bash", "run-start.sh"]
