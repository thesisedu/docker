#!/usr/bin/env sh

set -e

DIR=$(pwd)

cd ~/Code/businessu/server/server
source ./env.sh
./node_modules/.bin/feature-scripts db:backup --stage=production \
  -t assignment_templates \
  -t configuration \
  -t course_version_segments \
  -t course_version_tags \
  -t course_versions \
  -t courses \
  -t entity_tags \
  -t segments \
  -t standard_sets \
  -t tags \
  -t trial_request_campaigns \
  -t vods \
  -t widget_templates

cd $DIR

# Restore with:
# pg_restore -h localhost --disable-triggers -Fd -O -a -j 8 -U postgres \
#   -d businessu_skeleton /Users/sammarks/Documents/dumps/businessu-feature-production-2022-10-27-08-45-41.dump

# To seed:
# DB_NAME=businessu_skeleton DEBUG=feature* DB_PASSWORD=postgres DB_USER=postgres \
#   ./node_modules/.bin/feature-scripts seed marketing --course "Principles of Marketing (BU)"
