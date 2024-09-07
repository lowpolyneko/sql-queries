#!/bin/sh
sqlite3 CTA_L_daily_ridership.db < "$@"
