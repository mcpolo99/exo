FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu
#what image should be used????

USER root
# Install dependencies
COPY requirements/requirements-develop.txt /exo/

ARG USERNAME=exouser

RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils dialog git ssh vim build-essential zsh \
    && apt-get clean \
    && mkdir -p /home/${USERNAME}/.vscode-server /home/${USERNAME}/.vscode-server-insiders /home/${USERNAME}/commandhistory \
    && chown ${USERNAME}:${USERNAME} -R /home/${USERNAME}/.local/ \
    && chown ${USERNAME}: -R /home/${USERNAME}/

USER exouser

RUN pip install --user autopep8 -r requirements-dev.txt --no-cache-dir

# Empty the ENTRYPOINT to allow all commands
ENTRYPOINT []
