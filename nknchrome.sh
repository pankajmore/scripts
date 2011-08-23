#!/bin/bash
/usr/bin/env all_proxy="nknproxy.iitk.ac.in:3128" no_proxy=".iitk.ac.in,localhost,172.*" /usr/bin/chromium-browser --enable-accelerated-2d-canvas --user-data-dir=/dev/shm/chromium
