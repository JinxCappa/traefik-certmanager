FROM python:alpine

ENV PYTHONUNBUFFERED=1 \
    ISSUER_NAME=letsencrypt \
    ISSUER_KIND=ClusterIssuer \
    CERT_CLEANUP=false \
    PATCH_SECRETNAME=true \
    ENABLE_LEGACY=false \
    ENABLE_LEGACY_ONLY=false

RUN pip install kubernetes
COPY main.py /
CMD python /main.py
