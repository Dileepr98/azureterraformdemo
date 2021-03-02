FROM node:latest

LABEL Author="Dileep Singh"

ENV PORT 8080
ENV WDIR /usr/src/app

#Create app directory
RUN mkdir -p ${WDIR}
WORKDIR ${WDIR}

#Build app source
COPY . . 

#run NPM install
RUN npm install

#Verify files are there
RUN find ${WDIR} -type f -follow -print | grep -v ./node_modules

#port for web
EXPOSE ${PORT}

HEALTHCHECK --interval=5m --timeout=3s \ 
    CMD curl -f http:://localhost:${PORT} || exit 1

CMD ["npm", "start"]