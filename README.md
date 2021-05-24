# Java Spring Kubernetes Example With [DevSpace](https://devspace.sh/)

Take a look at [`devspace.yaml`](./devspace.yaml) to see how DevSpace is
configured to work with this project.

## Quickstart

1. Choose a Kubernetes namespace to work with:

```bash
devspace use namespace my-spring-app
```

2. Start Development

```bash
devspace dev
```

3. Start App (inside container terminal)

```bash
mvn spring-boot:run
```

4. Happy Coding!
