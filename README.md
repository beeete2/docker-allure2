docker-allure2
==============

# How to use docker-allure2 image
Put the xunit xml file in "results" directory.

```bash
docker run -it --rm -v $(pwd):/output -w /output beeete2/docker-allure2 allure generate /output/results/ -o /output/reports/ --clean
```

## Try it sample reports
Create reports
```bash
git clone https://github.com/beeete2/docker-allure2.git
cd docker-allure2
docker run -it --rm -v $(readlink -f output):/output -w /output beeete2/docker-allure2 allure generate /output/results/ -o /output/reports/ --clean
```
Report was output to `output/reports`.
Then, open `index.html` at your browser.
