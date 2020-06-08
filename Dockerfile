FROM sentry:9.1.2

COPY . /usr/src/sentry-saml2

WORKDIR /usr/src/sentry-saml2

RUN pip install -r requirements.txt

RUN cat sentry.conf.py >> $SENTRY_CONF/sentry.conf.py
