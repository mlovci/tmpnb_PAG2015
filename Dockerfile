FROM mlovci/tmpnb-minimal

ADD Introduction.ipynb /home/jovyan/Introduction.ipynb
ADD Acknowledgements.ipynb /home/jovyan/Acknowledgements.ipynb
ADD examples /home/jovyan/examples
ADD img /home/jovyan/img

USER root
RUN echo "c.ZMQTerminalInteractiveShell.kernel_timeout = 600" >> ~/.ipython/profile_default/ipython_console_config.py
USER jovyan
