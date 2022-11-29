#!/bin/sh -x

sh run-terra.sh

sh run-jen.sh


#Before Running Plugins Playbook Please Make Sure You've Copied the Jenkins Default Administtraion Password in Varibale Seciton (Location : modules/install-plugins/plugins.yaml )
#sh run-plug.sh


#Before Running Plugins Playbook Please Make Sure You've Copied the Jenkins Default Administtraion Password in Varibale Seciton (Location : modules/create-job/job.yaml )
#sh run-job.sh