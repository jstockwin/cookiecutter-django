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
