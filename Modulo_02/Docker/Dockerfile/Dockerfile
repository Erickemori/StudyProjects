FROM jupyter/base-notebook

RUN python3
RUN pip install pandas 
LABEL mainainer="Erick Emori"
COPY . /var/www
WORKDIR /var/www
USER root
RUN sudo chmod +r ml-100k
ENTRYPOINT ["bash"]
RUN jupyter notebook --allow-root > /dev/null 2>&1
