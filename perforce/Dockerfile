FROM ubuntu:focal

# Get some dependencies for adding apt repositories
RUN apt update && apt install -y wget gnupg

# Add perforce repo
RUN wget -qO - https://package.perforce.com/perforce.pubkey | apt-key add -
RUN echo 'deb http://package.perforce.com/apt/ubuntu focal release' > /etc/apt/sources.list.d/perforce.list
RUN apt-get update

# Actually install it
RUN apt-get install -y helix-p4d

# Go into our directory, start Perforce, and view the log outputs
CMD cd /dbs && p4dctl start master && tail -F /perforce-data/logs/log
