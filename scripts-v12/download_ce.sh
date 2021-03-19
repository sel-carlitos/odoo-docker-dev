#!/bin/sh
scriptdir="$(dirname "$0")"
cd "$scriptdir"

rm -r ../../odoo_latest_src/community/v12
curl  https://nightly.odoo.com/12.0/nightly/tgz/odoo_12.0.latest.zip --output odoo_12.0.latest.zip
unzip -q odoo_12.0.latest.zip -d latest_src
rm odoo_12.0.latest.zip
mv latest_src/odoo-12.0* ../../odoo_latest_src/community/v12
rm -r latest_src