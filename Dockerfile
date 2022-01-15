FROM openjdk:8u312-jre

WORKDIR /opt/scouter

COPY server/conf ./conf
COPY server/extweb ./extweb
COPY server/lib ./lib
COPY server/plugin ./plugin
COPY server/scouter-server-boot.jar .

COPY startup.sh .
RUN chmod +x startup.sh

CMD ["./startup.sh"]
