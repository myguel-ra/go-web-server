# Golang web-server

> Project created for demonstration, please dont use it.

### References

Used in these two blog posts:

* [Build your Go image](https://docs.docker.com/language/golang/build-images/)
* [Kubernetes Pods](https://kubernetes.io/docs/concepts/workloads/pods/)

### Running the example

* Build image with multi-stage build

    docker build -t myguel/http-server:latest .

* Test Run with Docker

    docker run --publish 8080:8080 myguel/http-server

* Deploy on kubernetes

    kubectl apply -f app-pod.yaml