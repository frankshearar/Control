Control provides a framework for creating and manipulating delimited continuations and delimited dynamic variables.

In particular, Control implements the `shift` control operator. Given a mark on the stack (placed there by `reset`), `shift` will "cut" the stack from the context sending `#shift` down to that mark, and turn that chunk of stack into a function.

The problems in the interaction between dynamic variables and delimited continuations are [best described elsewhere](http://okmij.org/ftp/Computation/dynamic-binding.html). Control's _delimited_ dynamic variables play nicely with control operators.

Smalltalk's resumable exceptions [form the basis](http://www.lshift.net/blog/2012/06/27/resumable-exceptions-can-macro-express-delimited-dynamic-variables) for the library.

Current status

[![Build Status](https://secure.travis-ci.org/frankshearar/Control.png?branch=master)](http://travis-ci.org/frankshearar/Control)