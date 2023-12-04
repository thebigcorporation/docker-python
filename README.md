# Python in Docker

Author: Sven-Thorsten Dietrich <sxd1425@miami.edu>

This code is made available under the GPL-2.0 license.
Please see the LICENSE file for details.

This container packages python and can be used as base
for containers running python scripts.

To run a python script located in the local directory on your system,
execute the following command:

docker run -it -v "/local/path/to/python/app":"/app":shared,ro,z \
	hihg-um/${USER}/python /app/<python_app>.py
