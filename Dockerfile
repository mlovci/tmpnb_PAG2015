FROM mlovci/tmpnb-minimal

ADD Introduction.ipynb /home/jovyan/Introduction.ipynb
ADD Acknowledgements.ipynb /home/jovyan/Acknowledgements.ipynb
ADD examples /home/jovyan/examples
ADD img /home/jovyan/img

USER root
RUN echo "c.ZMQTerminalInteractiveShell.kernel_timeout = 600" >> ~/.ipython/profile_default/ipython_console_config.py
USER jovyan
ADD https://s3-us-west-2.amazonaws.com/flotilla-projects/flotilla_projects_pag2015.zip /home/jovyan/flotilla_projects/flotilla_projects_pag2015.zip
RUN cd /home/jovyan/flotilla_projects && unzip flotilla_projects_pag2015.zip && ln -s flotilla_projects/* .
