[![CircleCI](https://circleci.com/gh/sneakybytes/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/sneakybytes/project-ml-microservice-kubernetes)

## Project Overview

`sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project operationalizes a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Running The Python Scripts and the web app `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Repository Architecture

1. .circleci : this folder holds the configuration file `config.yml` that CircleCI uses to identify how you want your testing environment set up and what tests you want to run.
2. output_txt_files : folder contains the output logs from running the `make_prediction.sh` through Docker Container and Kubernetes Pod.
3. Dockerfile : contains defined configurations that necessary to build a container image of our web app files
4. Makefile : A starter script that includes instructions on environment setup and lint tests 
5. App.py : Flask web app code file
6. make_prediction.sh : A script is responsible for sending some input data to the  containerized application via the appropriate port. Each numerical value in here represents some feature that is important for determining the price of a house in Boston.
7. requirements.txt : contains a list of packages that are used to install the environment in the Makefile
8. run_docker.sh : A script that builds docker image from Dockerfile and run a container from the built image which contains the Flask web app
9. run_kubernetes.sh : A script to deploy the Flask web app on kubernetes cluster
10. upload_docker.sh : Upload the built image from `run_docker.sh` to Docker Hub so Kubernetes can pull the image when deploying the Flask web app

  
