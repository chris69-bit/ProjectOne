#Use an official python runtime as the base image 
FROM python:3.9-slim

#Set the working directory in the container
WORKDIR /app

#Copy contents of the home directory to the container's working directory
COPY . /app

#Install all the needed dependencies specified in the requirements.txt
RUN pip install Flask

#Make port 8080 available to the outside 
EXPOSE 8080

#Define env variable
ENV FLASK_APP=myapp.py

#Run myapp.py when container
CMD ["python", "myapp.py"]
