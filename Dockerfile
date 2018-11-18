FROM rocker/shiny
MAINTAINER Suman Khanal "suman81765@gmail.com"


# basic shiny functionality
RUN R -e "install.packages(c('rmarkdown','rio','readxl','DT'), repos='https://cloud.r-project.org/')"


# copy the app to the image
RUN mkdir /root/dataviewer
COPY ui.R server.R /root/dataviewer/

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/root/dataviewer')"]
