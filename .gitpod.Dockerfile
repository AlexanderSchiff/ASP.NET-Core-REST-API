FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb; dpkg -i packages-microsoft-prod.deb
RUN apt update && apt install -y apt-transport-https
RUN apt update && apt install -y dotnet-sdk-5.0