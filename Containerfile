FROM cgr.dev/chainguard/git as clone
WORKDIR /rules
RUN git clone https://gitlab.com/jntesteves/game-devices-udev.git 

FROM scratch as build

COPY --from=clone /rules/game-devices-udev /etc/udev/rules.d
COPY rules /etc/udev/rules.d
