### Get Started

1. Create namespace

```bash
kubectl create ns web101
```

2. Build an image

```bash
docker build -t multisyscorp/web101
```

3. Push to dockerhub (personal account is free)

```bash
docker push multisyscorp/web101
```

4. Apply deployment

```bash
kubectl -n web101 apply -f deployment.yaml
```

5. Apply service

```bash
kubectl -n web101 apply -f service.yaml
```

6. Apply ingress

```bash
kubectl -n web101 apply -f ingress.yaml
```

7. Check ingress controller if IP address columne is already assigned.

```bash
kubectl -n web101 get ingress -w
```

8. Update etc/hosts

```bash
vim /etc/hosts
```

Configuration
```
127.0.0.1 site.web.local
```

9. Open site.web.local in your browser
