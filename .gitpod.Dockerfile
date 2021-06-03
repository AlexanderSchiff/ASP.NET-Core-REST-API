FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
USER root
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb; dpkg -i packages-microsoft-prod.deb
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get update && apt-get install -y dotnet-sdk-5.0 aspnetcore-runtime-5.0
USER gitpod