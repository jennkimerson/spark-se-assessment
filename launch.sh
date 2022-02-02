#!/bin/bash

export FLASK_APP=project.server
export APP_SETTINGS="project.server.config.DevelopmentConfig"
flask db init
flask db migrate
flask db upgrade
# flask run --host=127.0.0.1 --port=5000
# flask run 
flask run --host=127.0.0.1 --port=$PORT