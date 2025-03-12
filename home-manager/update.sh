#! /bin/bash

nix flake update
home-manager switch --flake .
