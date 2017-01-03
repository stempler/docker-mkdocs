FROM python:3.5.2-alpine

RUN pip install mkdocs && mkdocs --version && pip install mkdocs-material
RUN pip install pygments

ENV MKDOCS_DIR /mkdocs
WORKDIR $MKDOCS_DIR
CMD mkdocs --help
