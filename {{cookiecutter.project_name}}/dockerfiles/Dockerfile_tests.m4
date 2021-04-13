include(`Dockerfile')

ENV ENVIRONMENT tests

COPY ./requirements_test.txt $PROJECT_DIR/requirements_test.txt

RUN --mount=type=cache,target=/root/.cache/pip pip-sync $PROJECT_DIR/requirements_test.txt

ENTRYPOINT ["/$PROJECT_DIR/dockerfiles/entrypoint_test.sh"]
CMD []
