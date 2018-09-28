#!/bin/env bash

ansible-playbook --connection=local -i="localhost," $1
