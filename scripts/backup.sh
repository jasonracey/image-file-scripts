#!/bin/bash

sync-to-remote () {
  rsync --progress --update -avh --include='*/' --include='*.ARW' --exclude='*' ./ /Volumes/$1/Photographs/$2
}

remotes=(photos-a photos-b)
year=2019

for remote in ${remotes[@]}; do sync-to-remote $remote $year; done
