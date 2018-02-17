docker-allure2
==============

# How to use docker-allure2 image
Put the xunit xml file in "results" directory.

```bash
docker run -it --rm -v $(pwd):/output -w /output beeete2/docker-allure2 allure generate /output/results/ -o /output/reports/ --clean
```
