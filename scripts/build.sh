#!/bin/sh

ember build production
cp dist/index.html dist/200.html # enable client-side routing

