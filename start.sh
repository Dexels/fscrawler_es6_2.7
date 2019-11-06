#! /bin/bash
#el_url=$SET_URL


sed -i -e "s,monkey,$SET_URL,g" /root/.fscrawler/job_10/_settings.yaml

/fsc/bin/fscrawler job_10 --rest --debug --trace

