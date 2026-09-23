#!/bin/bash

# Installs latest Plex package
dpkg -i /home/kevin/plexmediaserver.deb 

# Configures the Tautulli service (which is installed on a persistent NFS share)
cp /opt/Tautulli/init-scripts/init.systemd /etc/systemd/system/tautulli.service
systemctl enable tautulli.service
systemctl daemon-reload
systemctl start tautulli.service
