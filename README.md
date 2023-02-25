[![build-ublue](https://github.com/ublue-os/udev-rules/actions/workflows/build.yml/badge.svg)](https://github.com/ublue-os/udev-rules/actions/workflows/build.yml)

# udev-rules

A layer for adding extra udev rules to your image. Use this for better hardware support!

# Usage

Add this to your containerfile:

    COPY --from=ghcr.io/ublue-os/udev-rules etc/udev/rules.d/* /etc/udev/rules.d
    
# Features

Feel free to PR more rules into this repo! Ideally as they get added upstream we can remove them here. 

- Steam Devices
- Google Titan USB keys
- OpenRGB

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/ublue-os/ubuntu
