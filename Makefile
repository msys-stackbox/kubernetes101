build-app-local:
	docker build -f ops/docker/nginx/Dockerfile -t multisyscorp/web101 .
	docker push multisyscorp/web101

build-app-prod:
	docker build -f ops/docker/nginx/Dockerfile -t multisyscorp/web101:prod .
	docker push multisyscorp/web101:prod

apply-local:
	kubectl apply -k ops/kubernetes/overlays/local

apply-prod:
	kubectl apply -k ops/kubernetes/overlays/production