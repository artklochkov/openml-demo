FROM jupyter/scipy-notebook:2d878db5cbff

RUN git clone https://github.com/openml/openml-python
RUN cd openml-python && git checkout 26686b0dda5b08776ef59e8637c5e3cd81dfca00 && python setup.py install
CMD tini -- start-notebook.sh openml-python/examples/OpenMLDemo.ipynb
