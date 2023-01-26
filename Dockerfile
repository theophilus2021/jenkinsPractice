FROM python:3.8-alpine

COPY requirements.txt /app/requirements.txt

# Switch working directory. This works like change directory, cd command in terminal

WORKDIR /app

# install the dependencies and packages in the requirements.txt
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /app

# run application in the container
# Any Docker image must have an ENTRYPOINT or CMD declaration for a container to start.
ENTRYPOINT [ "python" ]

# appends the list of parameters to the EntryPoint parameter 
# to perform the command that runs the application.
# ex. works like running phython app.py
CMD [ "app.py" ]

