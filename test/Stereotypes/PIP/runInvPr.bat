"C:\boogie\Boogie.exe" /errorLimit:28 /z3opt:/rs:42 /enhancedErrorMessages:1  /trace /vcsMaxKeepGoingSplits:10 /vcsKeepGoingTimeout:1 /proc:ProveInv Heap.bpl MSet.bpl Region.bpl Auxiliary.bpl TreeStereotype.bpl ListStereotype.bpl  NodeType.bpl TreeInvariant.bpl ListInvariant.bpl  /xml:resultInvPr.xml NodeInvariant.bpl  TreeOperations.bpl ListOperations.bpl InvPrProofs.bpl