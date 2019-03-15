#!/bin/bash

sudo apt install vagrant virtualenv
pip install virtualenvwrapper

mkvirtualenv httpd_whoami
workon httpd_whoami

pip install -r requirements.txt