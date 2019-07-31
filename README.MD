# Overview
This Docker contains [gupload - Google Drive CLI Uploader](https://github.com/hardwario/gupload) 

## Example
```
docker run --rm -it -v `pwd`/credentials.json:/tmp/credentials.json -v `pwd`:/builds hardwario/gupload
gupload --folder 1OQ3lq2O1zqZ01vUgzvg1iyXXtBJRl6pW --file a.out ../a.out --file changelog.txt ../changelog.txt
```

## Workdir
    /builds

## Environment
    GOOGLE_APPLICATION_CREDENTIALS=/tmp/credentials.json
    LC_ALL=C.UTF-8
    LANG=C.UTF-8

## Additional packages
* curl
* python3 
* python3-six
* zip