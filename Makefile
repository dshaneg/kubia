create:
	gcloud container clusters create kubia --num-nodes 3 --machine-type f1-micro

destroy:
	gcloud container clusters delete kubia
