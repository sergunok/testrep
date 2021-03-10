FROM ubuntu:20.10

RUN apt update -y && \
    apt install iproute2 \
                iputils-ping \
                python3 \
                python3-pip -y && \
    rm -fR /var/lib/apt/lists/*

RUN pip3 install ansible

CMD ["/bin/bash"]
