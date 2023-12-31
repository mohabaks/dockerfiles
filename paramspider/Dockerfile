FROM python:3-alpine

# Set the working directory
WORKDIR /

# Install git and dependencies
RUN apk add --no-cache git 

# Clone ParamSpider repository
RUN git clone https://github.com/devanshbatham/paramspider

# Change the working directory to the cloned repository
WORKDIR /paramspider

# Install ParamSpider dependencies using pip
RUN pip install .

# Set the entrypoint to run paramspider
ENTRYPOINT ["paramspider"]