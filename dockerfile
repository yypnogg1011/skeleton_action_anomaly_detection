FROM conda/miniconda3

WORKDIR /

RUN apt-get update -y && apt-get install git -y

RUN git clone https://github.com/RomeroBarata/skeleton_based_anomaly_detection.git

RUN conda env create -f /skeleton_based_anomaly_detection/environment.yml

RUN pip install numpy keras sklearn
