
What is shit?
=============

Shit is a package manager. Or maybe not. No, actually it's not. It's just
a collection of recipes which describe how to build packages. It does not
include init scripts nor additional patches. Software which doesn't build
with a simple *configure && make install* (or something comparable to that)
is not allowed here. Similarly, if the build system does not respect
*CFLAGS* or *prefix* or *DESTDIR* then it's crap. And there is no crap in
shit.


Rationale
=========

Sooner or later you are bound to compile one or the other piece of software
from source. Either because the package simply doesn't exist for your platform
or because the packagers are too drunk to update the package. In either case,
the first thing you have to do is to find the download link. And oh boy
is it fun to click through all the ads and redirects to find the actual file.
Then you have to go back and find the instructions how to build it. Yes, we
all hate autocrap, but it actually works (if done properly). At least it
fucking respects *prefix* and *DESTDIR*. Not unlike cmake which just had to
make up their own name for the prefix. Once you have the package installed
you have to configure it anyway, and you probably won't use init scripts
anyway but god or SMF or whatever the tool of the day is.

Recipes always describe the latest stable release of each package. If a
dependent package breaks then so be it. The world is moving on, and so should
you. Read that carefully: *you* should read the release notes of each package
you're installing and decide for yourself whether you want to update or not.
I will not make decisions about which package is deemed stable and which one
is not. I trust upstream to do that decision.


Installing shit
===============

Clone to a directory, then add *&lt;prefix&gt;/bin* to your *$PATH* and you
can start using shit like this:

    $ shit install llvm


The full list of commands is: help, version, build, link, unlink, list,
install. The install command is just a convenient wrapper around build and
link'


How it works
============

Shit is heavily inspired by mxcl's Homebrew, but still very
different. It uses a DSL for the recipes, doesn't include any patches or
additional scripts, strives to be cross-platform (mac, linux or anything that
includes a C compiler). It does not manage dependencies, it's up to you what
you install with the native package manager and what through shit.

The recipes are stored in *&lt;prefix&gt;/share/shit*. Just look at any of the
existing recipes, copy it and modify it. Shit follows *convention over
configuration*. A tarball with name *foo-1.0.tar.gz* is expected to extract
the source into the directory *foo-1.0*. The *unpack* directive will unpack
the tarball and set *pwd* to the directory with the source. The *configure*
directive automatically sets the prefix, *make* parallelizes the jobs.


