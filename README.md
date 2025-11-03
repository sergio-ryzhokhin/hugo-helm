# Intro
TBD

# Prerequisites
TBD
1. Istio Ingress Gateway
2. Storage Class?

# Installation
TBD

# TODO
1. Add Hugo generated content deployment under nginx
    1. Create separate repo for Hugo content deploy helm chart, which will consist from a job to generate static content

        reson for keeping it separate is to have the ability to deploy content with helm separately from the hosting infra

    1. Use above as a dependency in this repo, where above job will be added as a post-install hook
    1. Create your own container image for content deployment job (publish it on github container registry)

        explore container image dev process further

1. Convert to HTTPS
1. Add development container
