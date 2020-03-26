FROM bitnami/spark:2.4.5-debian-10-r43
COPY data.json /data/
ENV SCALA_VERSION ${SCALA_VERSION:-2.12.2}
ENV SBT_VERSION ${SBT_VERSION:-0.13.15}
USER 0

RUN \
  echo "scala version: $SCALA_VERSION | sbt version: $SBT_VERSION" && \
  curl -fsL http://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz | tar xfz - -C /usr/local && \
  ln -s /usr/local/scala-$SCALA_VERSION/bin/* /usr/local/bin/ && \
  scala -version && \
  scalac -version