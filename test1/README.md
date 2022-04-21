Instructions for running API from docker 

docker build -t plumbing .

docker run -p 8000:8000 plumbing

docker up and running at http://127.0.0.1:8000/__docs__/

swagger at http://127.0.0.1:8000/__swagger__/

front at http://127.0.0.1:8000/