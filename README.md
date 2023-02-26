[![build-ublue](https://github.com/ublue-os/udev-rules/actions/workflows/build.yml/badge.svg)](https://github.com/ublue-os/udev-rules/actions/workflows/build.yml)

# udev-rules

A layer for adding extra udev rules to your image. Use this for better hardware support!

# Usage

Add this to your Containerfile to copy the rules over:

    COPY --from=ghcr.io/ublue-os/udev-rules:latest /ublue-os-udev-rules /
    
Or if you prefer to install via an RPM package:

    COPY --from=ghcr.io/ublue-os/udev-rules:latest /ublue-os-udev-rules.noarch.rpm /
    RUN rpm -ivh /ublue-os-udev-rules.noarch.rpm
    
# Features

Feel free to PR more rules into this repo! Ideally as they get added upstream we can remove them here. 

- Steam Devices
- Google Titan USB keys

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/ublue-os/ubuntu
