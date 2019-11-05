FROM ubuntu
ENV ORA_CLOUD_CLUSTER="ASHBURN"
ARG LICENCE_KEY="123-0001-223"
LABEL MAINTAINER cnaveen.devops@gmail.com
COPY sample.sh /code/sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/sample.sh
RUN echo "LICENSE KEY IS "$LICENCE_KEY"
WORKDIR /code
#ENTRYPOINT ["sh","sample.sh"]
#CMD ["testfile"]
CMD sh sample.sh testfile
