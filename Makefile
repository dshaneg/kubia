create:
	gcloud container clusters create kubia --num-nodes 3 --machine-type n1-standard-1

destroy:
	gcloud container clusters delete kubia
