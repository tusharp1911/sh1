#!/bin/bash

  echo "Enter timezone: "
  read Time
  unset TZ
  case "$Time" in
    Asia)
      export TZ="Asia/Kolkata"
      ;;
    ?*)
      echo "Unknown Time Zone"
      ;;
  esac
