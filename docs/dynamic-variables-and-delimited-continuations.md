Normal dynamic variables - like `DynamicVariable` subclasses - either capture the entire dynamic environment or don't capture anything.

In the following, `TestDynamicVariable value` should - one would expect - evaluate to 1 (because the shift/reset cuts out that part of the stack that sets `TestDynamicVariable` to 2. That change should have no effect. Still, it does evaluate to 2.

    TestDynamicVariable value: 1 during: [
        [TestDynamicVariable value: 2 during: [
            [:k| TestDynamicVariable value ] shift ]] reset]

Instead, a shift not capturing a change in a dynamic binding should behave like this:
    
    "A shift not capturing a change in a dynamic binding."
    | p f v1 v2 v3 v4|
    p := DelimitedDynamicVariable default: #uninitialized.
    p dlet: 1 in: [
        f := p dlet: 2 in: [
            "Capture part of the stack, but nothing interesting. k
             becomes the function [:x | x + p dref]."
            [[:k | v1 := p dref. k] shift + p dref] reset ].
        v2 := p dref.
        v3 := f value: 100.
        v4 := p dref].
    "Inside shift, outside shift, inside again, outside again."
    {v1. v2. v3. v4} "=> #(2 1 101 1)"

One capturing such a change should behave like this:

    "A shift capturing a change in a dynamic binding."
    | p f v1 v2 v3 v4 |
    p := DelimitedDynamicVariable default: #uninitialized.
    p dlet: 1 in: [
        f := [p dlet: 2 in: [
                "k becomes the function [:x | p dlet: 2 in: [ x + p dref ]]"
                [:k | v1 := p dref. k] shift + p dref]] reset.
        v2 := p dref.
        v3 := f value: 100.
        v4 := p dref].
    "Inside shift, outside shift, inside again, outside again."
    {v1. v2. v3. v4} "=> #(1 1 102 1)"