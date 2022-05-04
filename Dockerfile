FROM rocker/tidyverse

WORKDIR /app/
COPY DESCRIPTION .
COPY R R

RUN R -e "devtools::install_deps('.')"
RUN R -e "devtools::document('.')"
RUN R -e "devtools::install('.')"