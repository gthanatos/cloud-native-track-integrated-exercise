FROM java:9

VOLUME /tmp
RUN mkdir /application
ADD *.jar /application/app.jar

ENTRYPOINT ["/application/entrypoint.sh"]
CMD [ "java", "-Xmx512m", "-Djava.security.egd=file:/dev/urandom", "-jar", "/application/app.jar" ]
