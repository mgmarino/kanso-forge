kanso-forge
===========

forge wrapped for kan.so

This is currently version 0.6.14.  The forge website is:

http://github.com/digitalbazaar/forge

and more documentation is available there.

Forge provides a large set of encryption/security functionality in javascript.

Usage
-----
The web worker scripts (in ```forge/worker.prime.js``` and ```forge/jsbn.js```)
are included in the distribution, but you must likely point the functions to
the correct URL using the ```workerScript``` option when e.g. generating new keys.

