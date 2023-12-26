FROM appsmith/appsmith-ce:v1.9.57

WORKDIR /opt/appsmith

COPY custom_entrypoint.sh .

RUN chmod +x custom_entrypoint.sh

ENTRYPOINT [ "/opt/appsmith/custom_entrypoint.sh" ]
