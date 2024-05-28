#!/bin/bash


STREAM_URL="https://live.musopen.org:8085/streamvbr0?1716803647680"

if ! command -v mpv &> /dev/null
then
    echo "mpv could not be found, please install it first."
    exit
fi


if ! command -v cava &> /dev/null
then
    echo "cava could not be found, please install it first."
    exit
fi


mpv "$STREAM_URL" > /dev/null 2>&1 &

sleep 5

cava
