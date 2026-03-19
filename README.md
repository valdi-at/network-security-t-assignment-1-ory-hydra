# Network Security T - Assignment 1: Ory Hydra

## Project Information

| Name                        | NRP        | Group    |
|-----------------------------|------------|----------|
| Mohamad Valdi Ananda Tauhid | 5025221238 | KeyCloak |

### Deployments

| Environment |  Link                                        |  Description    |
|:-----------:|----------------------------------------------|-----------------|
|  Keycloak   | https://keycloak.opensmh.shinyshoe.net       | The app         |
|  Keycloak   | https://auth.keycloak.opensmh.shinyshoe.net  | The OIDC server |
|  Ory Hydra  | https://ory-hydra.opensmh.shinyshoe.net      | The app         |
|  Ory Hydra  | https://auth.ory-hydra.opensmh.shinyshoe.net | The OIDC server |

### Docker Packages
|Application|Package|
|-|-|
|[app](https://github.com/valdi-at/network-security-t-assignment-1-app)|[ghcr.io/valdi-at/network-security-t-assignment-1-app](https://ghcr.io/valdi-at/network-security-t-assignment-1-app)|


### Source Code

|Submodule|Description|
|-|-|
|[app](https://github.com/valdi-at/network-security-t-assignment-1-app)|Source code for the app that will use the OIDC server|
|[keycloak](https://github.com/valdi-at/network-security-t-assignment-1-keycloak)|The stack containing the information about the environment that uses Keycloak as its OIDC server|
|[**ory-hydra**](https://github.com/valdi-at/network-security-t-assignment-1-ory-hydra)|The stack containing the information about the environment that uses Ory Hydra as its OIDC server|

*bold indicate the current submodule you are in

## Repository Information
This repository contains the environment for Ory Hydra. The stack is a docker compose project.