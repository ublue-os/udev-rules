[![build-ublue](https://github.com/ublue-os/udev-rules/actions/workflows/build.yml/badge.svg)](https://github.com/ublue-os/udev-rules/actions/workflows/build.yml)

# udev-rules

A layer for adding extra udev rules to your image. Use this for better hardware support!

# Usage

Add this to your containerfile:

    COPY --from=ghcr.io/ublue-os/udev-rules etc/udev/rules.d/* /etc/udev/rules.d
    
# Features

Feel free to PR more rules into this repo! Ideally as they get added upstream we can remove them here. Note that this image only contains the udev rules, you must still install and configure the software that needs these rules.

- Gaming controllers from [game-devices-udev](https://gitlab.com/jntesteves/game-devices-udev/) 
- Google Titan USB keys
- OpenRGB rules
- [Yubikey support](https://github.com/Yubico/libfido2/tree/main/udev)

## Adding rules

If you have a rule you want to contribute send a pull request by adding the rule into `etc/udev/rules.d`

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/ublue-os/udev-rules
