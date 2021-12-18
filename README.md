# Golang Web Server

> Project created for demonstration, please dont use it.

### References

Used in these two websites:

* [Build your Go image](https://docs.docker.com/language/golang/build-images/)
* [Kubernetes Pods](https://kubernetes.io/docs/concepts/workloads/pods/)

### Setup

* Build image with multi-stages

    ```sh
    docker build -t myguel/http-server:latest .
    ```

* Run and test with Docker

    ```sh
    docker run --publish 8080:8080 myguel/http-server
    ```

* Deploy on kubernetes

    ```sh
    kubectl apply -f app-pod.yaml
    ```
