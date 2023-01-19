This is a Docker container which executes a Jupyter Notebook to solve a set of pandas coding exercises.  
How to access:
1. Build a container using this file:  
`docker build Dockerfile`
2. Run the image on port 8888 (to see the image hash: `docker images`)  
`docker run -it -p 8888:8888 [image hash]`  
3. Generate a jupyter password inside the Docker  
`jupyter password`
4. Run jupyter notebook on root  
`jupyter-notebook --allow-root`
5. Access local host on the browser URL http://localhost:8888/
6. Insert the password and access the Jupyter code

