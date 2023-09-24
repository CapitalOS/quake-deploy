FROM appsmith/appsmith-ce:v1.9.37.1

RUN chmod +x custom_entrypoint.sh

ENTRYPOINT [ "/opt/appsmith/custom_entrypoint.sh" ]
