FROM python:3.12-slim-bullseye

# Add user 'jupyter' so we dont need to run as root
RUN useradd -m jupyter

WORKDIR /usr/src/app
COPY martingale_simulator.ipynb ./

RUN pip install jupyterlab matplotlib pandas

RUN chown -R jupyter:jupyter /usr/src/app

ENV JUPYTER_CONFIG_DIR=/home/jupyter/.jupyter
ENV JUPYTER_RUNTIME_DIR=/home/jupyter/.local/share/jupyter/runtime

RUN chown -R jupyter:jupyter /home/jupyter

EXPOSE 8223

# Disable root login and remove sudo
RUN passwd -l root && \
    apt-get update && \
    apt-get remove -y sudo && \
    apt-get autoremove -y && \
    apt-get clean

USER jupyter

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8223", "--no-browser"]
