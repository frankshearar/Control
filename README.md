Control provides a framework for creating and manipulating delimited continuations and delimited dynamic variables.

In particular, Control implements the `shift` control operator. Given a mark on the stack (placed there by `reset`), `shift` will "cut" the stack from the context sending `#shift` down to that mark, and turn that chunk of stack into a function.

The problems in the interaction between dynamic variables and delimited continuations are [best described elsewhere](http://okmij.org/ftp/Computation/dynamic-binding.html). Control's _delimited_ dynamic variables play nicely with control operators.

Smalltalk's resumable exceptions [form the basis](http://www.lshift.net/blog/2012/06/27/resumable-exceptions-can-macro-express-delimited-dynamic-variables) for the library.

#Documentation
* [Delimited dynamic variables](Control/tree/master/docs/delimited-dynamic-variables.md)
* [Dynamic variables and delimited continuations](Control/tree/master/docs/dynamic-variables-and-delimited-continuations.md)

#Current status

[![Build Status](https://secure.travis-ci.org/frankshearar/Control.png?branch=master)](http://travis-ci.org/frankshearar/Control)

#Licence

Copyright (C) 2011 by Frank Shearar

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.