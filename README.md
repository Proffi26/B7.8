# B7.8
#use for build
docker build -t getfavico --build-arg site=https://github.com ./
#use for run
docker run -d --rm  --name getfavico_test --env env_site=https://lms.skillfactory.ru getfavico
