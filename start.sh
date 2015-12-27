#!/bin/sh

for f in environment/*
do
    export $(basename $f)=$(cat $f)
done

bin/hubot --adapter slack
