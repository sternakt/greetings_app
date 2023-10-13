FROM python:3.9-slim-bullseye

SHELL ["/bin/bash", "-c"]
WORKDIR /project

ADD greetings_app /project/greetings_app
COPY pyproject.toml /project/

RUN pip install --no-cache-dir .

CMD ["faststream", "run", "--workers", "1", "greetings_app.application:app"]
