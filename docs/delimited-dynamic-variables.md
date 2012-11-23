The basic API is straightforward:

```smalltalk
    | p |
    p := DelimitedDynamicVariable default: 0.
    p dref. "=> 0"
    p dlet: 3 in: [
        p dref. "=> 3"
        p dset: 4.
        p dref. "=> 4"
        p dlet: 2 in: [
            p dref "=> 2"]].
    p dref. "=> 0"
```