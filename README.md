# cookiecutter-django

A cookiecutter template for django applications.

Gives basic project setup for a django application, including nginx and uwsgi.

Note: It also contains GitHub actions configuration to deploy to my k8s cluster - you probably don't want to use this.

You need to add the following as GitHub secrets:

- GH_CR_PAT
- KUBECONFIG
- KUBERNETES_DEPLOY_CERTIFICATE
- KUBERNETES_DEPLOY_KEY

(Note these have very restricted permissions. We're trusting GitHub to keep them secret.)

To create a new project from this cookiecutter, and also use cruft to track changes, you can run:
`pip3 install cruft`
`cruft create https://github.com/jstockwin/cookiecutter-django`

Once you've answered the questions, change directory into your new project.
You should run `docker-compose build pip-compile`, and then `docker-compose run --rm pip-compile` to build your requirements files. Then you can run `docker-compose up server-dev` to start the development server.
