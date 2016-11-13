The following Boogie options are used by VCC:

  -proverWarnings:1 -liveVariableAnalysis:0 -z3opt:-memory:128 -proverMemoryLimit:0 -typeEncoding:m

Particularly, -typeEncoding:m is crucial, others not so much.

The files in vcc2bpl/ should be run with vcc2prelude.bpl, and likewise for vcc3bpl/ and vcc3prelude.bpl.

Some of these examples verify, and some not. Some take a long time and some are very quick.

