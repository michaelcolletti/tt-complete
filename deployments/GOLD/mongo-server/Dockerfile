# Stage 1
FROM mongo:latest AS mongodb

#RUN apk add --no-cache  --update nodejs npm
#RUN npm install npm@latest -g

# Create app directory
WORKDIR /data

# Install app dependencies
# 
# 

# Stage 2 

# For post run
ENV APIURL=http://localhost:3000/api
ENV API_ROOT=http://localhost:3000/api
ENV MONGODB_URI=mongodb://mongodb@localhost:27017
ENV SECRET=nodesecret

#COPY . .

EXPOSE 27017

#CMD [ "npm", "start" ]
#CMD [ "npm", "run", "dev" ]
