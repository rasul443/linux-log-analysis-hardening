#!/bin/bash

sudo systemctl enable auditd
sudo systemctl start auditd

sudo auditctl -w /etc/passwd -p wa -k passwd_changes
