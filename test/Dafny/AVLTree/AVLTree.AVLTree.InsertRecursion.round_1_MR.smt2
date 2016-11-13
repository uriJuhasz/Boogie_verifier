;Analysis time until now:    16s
(set-option :print-success false)
(set-info :smt-lib-version 2.0)
(set-option :AUTO_CONFIG false)
(set-option :pp.bv_literals false)
(set-option :MODEL.V2 true)
(set-option :smt.PHASE_SELECTION 0)
(set-option :smt.RESTART_STRATEGY 0)
(set-option :smt.RESTART_FACTOR |1.5|)
(set-option :smt.ARITH.RANDOM_INITIAL_VALUE true)
(set-option :smt.CASE_SPLIT 3)
(set-option :smt.DELAY_UNITS true)
(set-option :NNF.SK_HACK true)
(set-option :smt.MBQI false)
(set-option :smt.QI.EAGER_THRESHOLD 100)
(set-option :TYPE_CHECK true)
(set-option :smt.BV.REFLECT true)
(set-option :TIMEOUT 0)
(set-logic  UFNIA)
;(set-option :produce-unsat-cores true)
; done setting options
;Sorts
(declare-sort $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ 0)
(declare-sort $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ 0)
(declare-sort $@Map@@BoxType@To@Bool@@ 0)
(declare-sort BoxType 0)
(declare-sort ClassName 0)
(declare-sort DatatypeType 0)
(declare-sort Field$$@Map@@BoxType@To@Bool@@$ 0)
(declare-sort Field$Bool$ 0)
(declare-sort Field$BoxType$ 0)
(declare-sort Field$Int$ 0)
(declare-sort Field$ref$ 0)
(declare-sort ref 0)
(declare-sort Seq$BoxType$ 0)
(declare-sort Seq$ref$ 0)
(declare-sort TickType 0)

;Functions
(declare-fun $@bf ( ) Bool)
(declare-fun $@bf_1 ( ) Bool)
(declare-fun $@bf_10 ( ) Bool)
(declare-fun $@bf_100 ( ) Bool)
(declare-fun $@bf_103 ( ) Bool)
(declare-fun $@bf_104 ( ) Bool)
(declare-fun $@bf_107 ( ) Bool)
(declare-fun $@bf_108 ( ) Bool)
(declare-fun $@bf_11 ( ) Bool)
(declare-fun $@bf_111 ( ) Bool)
(declare-fun $@bf_112 ( ) Bool)
(declare-fun $@bf_12 ( ) Bool)
(declare-fun $@bf_13 ( ) Bool)
(declare-fun $@bf_14 ( ) Bool)
(declare-fun $@bf_15 ( ) Bool)
(declare-fun $@bf_16 ( ) Bool)
(declare-fun $@bf_17 ( ) Bool)
(declare-fun $@bf_18 ( ) Bool)
(declare-fun $@bf_19 ( ) Bool)
(declare-fun $@bf_2 ( ) Bool)
(declare-fun $@bf_20 ( ) Bool)
(declare-fun $@bf_21 ( ) Bool)
(declare-fun $@bf_22 ( ) Bool)
(declare-fun $@bf_23 ( ) Bool)
(declare-fun $@bf_24 ( ) Bool)
(declare-fun $@bf_3 ( ) Bool)
(declare-fun $@bf_4 ( ) Bool)
(declare-fun $@bf_5 ( ) Bool)
(declare-fun $@bf_50 ( ) Bool)
(declare-fun $@bf_51 ( ) Bool)
(declare-fun $@bf_52 ( BoxType ) Bool)
(declare-fun $@bf_6 ( ) Bool)
(declare-fun $@bf_7 ( ) Bool)
(declare-fun $@bf_70 ( ref ) Bool)
(declare-fun $@bf_8 ( ) Bool)
(declare-fun $@bf_82 ( ) Bool)
(declare-fun $@bf_83 ( ) Bool)
(declare-fun $@bf_84 ( ) Bool)
(declare-fun $@bf_85 ( ) Bool)
(declare-fun $@bf_88 ( ) Bool)
(declare-fun $@bf_89 ( ) Bool)
(declare-fun $@bf_9 ( ) Bool)
(declare-fun $@bf_92 ( ) Bool)
(declare-fun $@bf_93 ( ) Bool)
(declare-fun $@bf_95 ( ) Bool)
(declare-fun $@bf_96 ( ) Bool)
(declare-fun $@bf_97 ( ) Bool)
(declare-fun $@bf_98 ( ) Bool)
(declare-fun $@bf_99 ( ) Bool)
(declare-fun $@sk_105 ( ) ref)
(declare-fun $@sk_106 ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun $@sk_107 ( ) ref)
(declare-fun $@sk_108 ( ) Field$BoxType$)
(declare-fun $@sk_109 ( ) ref)
(declare-fun $@sk_110 ( ) Field$ref$)
(declare-fun $@sk_111 ( ) ref)
(declare-fun $@sk_112 ( ) Field$Int$)
(declare-fun $@sk_113 ( ) ref)
(declare-fun $@sk_114 ( ) Field$Bool$)
(declare-fun $@sk_115 ( ) ref)
(declare-fun $@sk_116 ( ) ref)
(declare-fun $@sk_119 ( ) Int)
(declare-fun $@sk_120 ( ) Int)
(declare-fun $@sk_121 ( ) ref)
(declare-fun $@sk_122 ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun $@sk_123 ( ) ref)
(declare-fun $@sk_124 ( ) Field$BoxType$)
(declare-fun $@sk_125 ( ) ref)
(declare-fun $@sk_126 ( ) Field$ref$)
(declare-fun $@sk_127 ( ) ref)
(declare-fun $@sk_128 ( ) Field$Int$)
(declare-fun $@sk_129 ( ) ref)
(declare-fun $@sk_130 ( ) Field$Bool$)
(declare-fun $@sk_133 ( ) Int)
(declare-fun $@sk_134 ( ) Int)
(declare-fun $@sk_135 ( ) ref)
(declare-fun $@sk_136 ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun $@sk_137 ( ) ref)
(declare-fun $@sk_138 ( ) Field$BoxType$)
(declare-fun $@sk_139 ( ) ref)
(declare-fun $@sk_140 ( ) Field$ref$)
(declare-fun $@sk_141 ( ) ref)
(declare-fun $@sk_142 ( ) Field$Int$)
(declare-fun $@sk_143 ( ) ref)
(declare-fun $@sk_144 ( ) Field$Bool$)
(declare-fun $@sk_147 ( ) Int)
(declare-fun $@sk_148 ( ) Int)
(declare-fun $@sk_149 ( ) Int)
(declare-fun $@sk_150 ( ) Int)
(declare-fun $@sk_151 ( ) ref)
(declare-fun $@sk_152 ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun $@sk_153 ( ) ref)
(declare-fun $@sk_154 ( ) Field$BoxType$)
(declare-fun $@sk_155 ( ) ref)
(declare-fun $@sk_156 ( ) Field$ref$)
(declare-fun $@sk_157 ( ) ref)
(declare-fun $@sk_158 ( ) Field$Int$)
(declare-fun $@sk_159 ( ) ref)
(declare-fun $@sk_160 ( ) Field$Bool$)
(declare-fun $@sk_163 ( ) ref)
(declare-fun $@sk_164 ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun $@sk_165 ( ) ref)
(declare-fun $@sk_166 ( ) Field$BoxType$)
(declare-fun $@sk_167 ( ) ref)
(declare-fun $@sk_168 ( ) Field$ref$)
(declare-fun $@sk_169 ( ) ref)
(declare-fun $@sk_170 ( ) Field$Int$)
(declare-fun $@sk_171 ( ) ref)
(declare-fun $@sk_172 ( ) Field$Bool$)
(declare-fun $@sk_173 ( ) Int)
(declare-fun $@sk_174 ( ) Int)
(declare-fun $@sk_175 ( ) ref)
(declare-fun $@sk_176 ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun $@sk_177 ( ) ref)
(declare-fun $@sk_178 ( ) Field$BoxType$)
(declare-fun $@sk_179 ( ) ref)
(declare-fun $@sk_180 ( ) Field$ref$)
(declare-fun $@sk_181 ( ) ref)
(declare-fun $@sk_182 ( ) Field$Int$)
(declare-fun $@sk_183 ( ) ref)
(declare-fun $@sk_184 ( ) Field$Bool$)
(declare-fun $@sk_187 ( ) ref)
(declare-fun $@sk_188 ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun $@sk_189 ( ) ref)
(declare-fun $@sk_190 ( ) Field$BoxType$)
(declare-fun $@sk_191 ( ) ref)
(declare-fun $@sk_192 ( ) Field$ref$)
(declare-fun $@sk_193 ( ) ref)
(declare-fun $@sk_194 ( ) Field$Int$)
(declare-fun $@sk_195 ( ) ref)
(declare-fun $@sk_196 ( ) Field$Bool$)
(declare-fun $@sk_197 ( ) Int)
(declare-fun $@sk_198 ( ) Int)
(declare-fun $_Frame@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun $Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) BoxType)
(declare-fun $Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ) BoxType)
(declare-fun $Box$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ ) BoxType)
(declare-fun $Box$Bool$ ( Bool ) BoxType)
(declare-fun $Box$BoxType$ ( BoxType ) BoxType)
(declare-fun $Box$ClassName$ ( ClassName ) BoxType)
(declare-fun $Box$DatatypeType$ ( DatatypeType ) BoxType)
(declare-fun $Box$Field$$@Map@@BoxType@To@Bool@@$$ ( Field$$@Map@@BoxType@To@Bool@@$ ) BoxType)
(declare-fun $Box$Field$Bool$$ ( Field$Bool$ ) BoxType)
(declare-fun $Box$Field$BoxType$$ ( Field$BoxType$ ) BoxType)
(declare-fun $Box$Field$Int$$ ( Field$Int$ ) BoxType)
(declare-fun $Box$Field$ref$$ ( Field$ref$ ) BoxType)
(declare-fun $Box$Int$ ( Int ) BoxType)
(declare-fun $Box$ref$ ( ref ) BoxType)
(declare-fun $Box$Seq$BoxType$$ ( Seq$BoxType$ ) BoxType)
(declare-fun $Box$Seq$ref$$ ( Seq$ref$ ) BoxType)
(declare-fun $Box$TickType$ ( TickType ) BoxType)
(declare-fun $FunctionContextHeight ( ) Int)
(declare-fun $Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Heap@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $ModuleContextHeight ( ) Int)
(declare-fun $nw@0 ( ) ref)
(declare-fun $rhs@0 ( ) ref)
(declare-fun $rhs@11@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@12@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@13@0 ( ) Int)
(declare-fun $rhs@14 ( ) ref)
(declare-fun $rhs@15 ( ) ref)
(declare-fun $rhs@2@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@3@0 ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun $rhs@6@0 ( ) Int)
(declare-fun $rhs@7 ( ) ref)
(declare-fun $rhs@8 ( ) ref)
(declare-fun $rhs@9 ( ) ref)
(declare-fun $Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun $Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ( BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun $Unbox$$@Map@@BoxType@To@Bool@@$ ( BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun $Unbox$BoxType$ ( BoxType ) BoxType)
(declare-fun $Unbox$ClassName$ ( BoxType ) ClassName)
(declare-fun $Unbox$DatatypeType$ ( BoxType ) DatatypeType)
(declare-fun $Unbox$Field$$@Map@@BoxType@To@Bool@@$$ ( BoxType ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun $Unbox$Field$Bool$$ ( BoxType ) Field$Bool$)
(declare-fun $Unbox$Field$BoxType$$ ( BoxType ) Field$BoxType$)
(declare-fun $Unbox$Field$Int$$ ( BoxType ) Field$Int$)
(declare-fun $Unbox$Field$ref$$ ( BoxType ) Field$ref$)
(declare-fun $Unbox$Int$ ( BoxType ) Int)
(declare-fun $Unbox$ref$ ( BoxType ) ref)
(declare-fun $Unbox$Seq$BoxType$$ ( BoxType ) Seq$BoxType$)
(declare-fun $Unbox$Seq$ref$$ ( BoxType ) Seq$ref$)
(declare-fun $Unbox$TickType$ ( BoxType ) TickType)
(declare-fun alloc ( ) Field$Bool$)
(declare-fun array.Length ( ref ) Int)
(declare-fun AVLTree.Contents ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun AVLTree.Repr ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun AVLTree.root ( ) Field$ref$)
(declare-fun call3formal@r@19@0 ( ) ref)
(declare-fun call3formal@r@24@0 ( ) ref)
(declare-fun call3formal@r@29@0 ( ) ref)
(declare-fun call3formal@r@34@0 ( ) ref)
(declare-fun call5formal@r@8@0 ( ) ref)
(declare-fun call6formal@deltaH@9@0 ( ) Int)
(declare-fun class.AVLTree ( ) ClassName)
(declare-fun class.Node ( ) ClassName)
(declare-fun DeclType$$@Map@@BoxType@To@Bool@@$ ( Field$$@Map@@BoxType@To@Bool@@$ ) ClassName)
(declare-fun DeclType$Int$ ( Field$Int$ ) ClassName)
(declare-fun DeclType$ref$ ( Field$ref$ ) ClassName)
(declare-fun deltaH@9@0 ( ) Int)
(declare-fun deltaH@9@1 ( ) Int)
(declare-fun deltaH@9@2 ( ) Int)
(declare-fun DtType ( DatatypeType ) ClassName)
(declare-fun dtype ( ref ) ClassName)
(declare-fun FDim$$@Map@@BoxType@To@Bool@@$ ( Field$$@Map@@BoxType@To@Bool@@$ ) Int)
(declare-fun FDim$Bool$ ( Field$Bool$ ) Int)
(declare-fun FDim$BoxType$ ( Field$BoxType$ ) Int)
(declare-fun FDim$Int$ ( Field$Int$ ) Int)
(declare-fun FDim$ref$ ( Field$ref$ ) Int)
(declare-fun IndexField ( Int ) Field$BoxType$)
(declare-fun key@7 ( ) Int)
(declare-fun lambda@8 ( Field$$@Map@@BoxType@To@Bool@@$ ref $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Field$Bool$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@Bool@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$$@Map@@BoxType@To@Bool@@$ ) $@Map@@BoxType@To@Bool@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$BoxType$ ) BoxType)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ ) Int)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ) ref)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$$@Map@@BoxType@To@Bool@@$ $@Map@@BoxType@To@Bool@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ Bool ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$BoxType$ BoxType ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Math.max ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Int Int ) Int)
(declare-fun Math.max@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Int Int ) Int)
(declare-fun Math.max@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Int Int ) Int)
(declare-fun Math@clip ( Int ) Int)
(declare-fun Math@min ( Int Int ) Int)
(declare-fun MultiIndexField ( Field$BoxType$ Int ) Field$BoxType$)
(declare-fun MultiIndexField_Inverse0$BoxType$ ( Field$BoxType$ ) Field$BoxType$)
(declare-fun MultiIndexField_Inverse1$BoxType$ ( Field$BoxType$ ) Int)
(declare-fun n@62@0 ( ) ref)
(declare-fun n@66@0 ( ) ref)
(declare-fun n@67@0 ( ) ref)
(declare-fun n@69@0 ( ) ref)
(declare-fun n@70@0 ( ) ref)
(declare-fun n@73@0 ( ) ref)
(declare-fun n@78@0 ( ) ref)
(declare-fun n@79@0 ( ) ref)
(declare-fun Node.balance ( ) Field$Int$)
(declare-fun Node.Contents ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun Node.Height ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Int)
(declare-fun Node.Height@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Int)
(declare-fun Node.Height@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Int)
(declare-fun Node.left ( ) Field$ref$)
(declare-fun Node.Repr ( ) Field$$@Map@@BoxType@To@Bool@@$)
(declare-fun Node.right ( ) Field$ref$)
(declare-fun Node.value ( ) Field$Int$)
(declare-fun null ( ) ref)
(declare-fun r@8 ( ) ref)
(declare-fun r@8@0 ( ) ref)
(declare-fun Seq@Append$BoxType$ ( Seq$BoxType$ Seq$BoxType$ ) Seq$BoxType$)
(declare-fun Seq@Append$ref$ ( Seq$ref$ Seq$ref$ ) Seq$ref$)
(declare-fun Seq@Build$BoxType$ ( Seq$BoxType$ Int BoxType Int ) Seq$BoxType$)
(declare-fun Seq@Build$ref$ ( Seq$ref$ Int ref Int ) Seq$ref$)
(declare-fun Seq@Drop$BoxType$ ( Seq$BoxType$ Int ) Seq$BoxType$)
(declare-fun Seq@Drop$ref$ ( Seq$ref$ Int ) Seq$ref$)
(declare-fun Seq@Empty$BoxType$ ( ) Seq$BoxType$)
(declare-fun Seq@Empty$ref$ ( ) Seq$ref$)
(declare-fun Seq@FromArray ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Seq$BoxType$)
(declare-fun Seq@Index$BoxType$ ( Seq$BoxType$ Int ) BoxType)
(declare-fun Seq@Index$ref$ ( Seq$ref$ Int ) ref)
(declare-fun Seq@Length$BoxType$ ( Seq$BoxType$ ) Int)
(declare-fun Seq@Length$ref$ ( Seq$ref$ ) Int)
(declare-fun Seq@Singleton$BoxType$ ( BoxType ) Seq$BoxType$)
(declare-fun Seq@Singleton$ref$ ( ref ) Seq$ref$)
(declare-fun Seq@Take$BoxType$ ( Seq$BoxType$ Int ) Seq$BoxType$)
(declare-fun Seq@Take$ref$ ( Seq$ref$ Int ) Seq$ref$)
(declare-fun Seq@Update$BoxType$ ( Seq$BoxType$ Int BoxType ) Seq$BoxType$)
(declare-fun Seq@Update$ref$ ( Seq$ref$ Int ref ) Seq$ref$)
(declare-fun Set@Choose$BoxType$ ( $@Map@@BoxType@To@Bool@@ TickType ) BoxType)
(declare-fun Set@Difference$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Empty$BoxType$ ( ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Intersection$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Singleton$BoxType$ ( BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@Union$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) $@Map@@BoxType@To@Bool@@)
(declare-fun Set@UnionOne$BoxType$ ( $@Map@@BoxType@To@Bool@@ BoxType ) $@Map@@BoxType@To@Bool@@)
(declare-fun t@6 ( ) ref)
(declare-fun t@63@0 ( ) ref)
(declare-fun t@74@0 ( ) ref)
(declare-fun this ( ) ref)
(declare-fun TypeTuple ( ClassName ClassName ) ClassName)
(declare-fun TypeTupleCar ( ClassName ) ClassName)
(declare-fun TypeTupleCdr ( ClassName ) ClassName)

;Predicates
(declare-fun $$Language$Dafny ( ) Bool)
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $@condition_$1 ( ) Bool)
(declare-fun $@condition_$10 ( ) Bool)
(declare-fun $@condition_$11 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$3 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$5 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$7 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)
(declare-fun $@condition_$9 ( ) Bool)
(declare-fun $HeapSucc ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $InMethodContext ( ) Bool)
(declare-fun $IsCanonicalBoolBox ( BoxType ) Bool)
(declare-fun $IsGoodHeap ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun $NP@457 ( ) Bool)
(declare-fun $NP@458 ( ) Bool)
(declare-fun $NP@785 ( ) Bool)
(declare-fun $NP@786 ( ) Bool)
(declare-fun $Unbox$Bool$ ( BoxType ) Bool)
(declare-fun AVLTree.Valid ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun AVLTree.Valid@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun DtAlloc ( DatatypeType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun GenericAlloc ( BoxType $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$$@Map@@BoxType@To@Bool@@$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$BoxType$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$Int$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@Bool@@ ref Field$ref$ ) Bool)
(declare-fun MapRead$$@Map@@BoxType@To@Bool@@$ ( $@Map@@BoxType@To@Bool@@ BoxType ) Bool)
(declare-fun Math.max@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ Int Int ) Bool)
(declare-fun Node.Balanced ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Balanced@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Balanced@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Balanced@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.BalanceValid ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.BalanceValid@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.BalanceValid@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.BalanceValid@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Height@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Valid ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Valid@2 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Valid@canCall ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Node.Valid@limited ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun Seq@Contains$BoxType$ ( Seq$BoxType$ BoxType ) Bool)
(declare-fun Seq@Contains$ref$ ( Seq$ref$ ref ) Bool)
(declare-fun Seq@Equal$BoxType$ ( Seq$BoxType$ Seq$BoxType$ ) Bool)
(declare-fun Seq@Equal$ref$ ( Seq$ref$ Seq$ref$ ) Bool)
(declare-fun Set@Disjoint$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun Set@Equal$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)
(declare-fun Set@Subset$BoxType$ ( $@Map@@BoxType@To@Bool@@ $@Map@@BoxType@To@Bool@@ ) Bool)

;Axioms
   (assert (! $$Language$Dafny :named ax_0))
   (assert (! $InMethodContext :named ax_1))
   (assert (! ($IsCanonicalBoolBox ($Box$Bool$ false)) :named ax_2))
   (assert (! ($IsCanonicalBoolBox ($Box$Bool$ true)) :named ax_3))
   (assert (! ($IsGoodHeap $Heap) :named ax_4))
   (assert (! (= $_Frame@0 (lambda@8 Node.Repr null $Heap alloc t@6)) :named ax_5))
   (assert (! (= ($Box$Bool$ false) ($Box$Bool$ ($@bf_52 ($Box$Bool$ false)))) :named ax_6))
   (assert (! (= ($Box$Bool$ true) ($Box$Bool$ ($@bf_52 ($Box$Bool$ true)))) :named ax_7))
   (assert (! (= (= true $@bf_50) ($Unbox$Bool$ ($Box$Bool$ true))) :named ax_8))
   (assert (! (= (= true $@bf_51) ($Unbox$Bool$ ($Box$Bool$ false))) :named ax_9))
   (assert (! (= (= true $@bf_82) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))) :named ax_10))
   (assert (! (= (= true $@bf_83) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)))) :named ax_11))
   (assert (! (= 0 $ModuleContextHeight) :named ax_12))
   (assert (! (= 0 (FDim$$@Map@@BoxType@To@Bool@@$ AVLTree.Contents)) :named ax_13))
   (assert (! (= 0 (FDim$$@Map@@BoxType@To@Bool@@$ AVLTree.Repr)) :named ax_14))
   (assert (! (= 0 (FDim$$@Map@@BoxType@To@Bool@@$ Node.Contents)) :named ax_15))
   (assert (! (= 0 (FDim$$@Map@@BoxType@To@Bool@@$ Node.Repr)) :named ax_16))
   (assert (! (= 0 (FDim$Bool$ alloc)) :named ax_17))
   (assert (! (= 0 (FDim$Int$ Node.balance)) :named ax_18))
   (assert (! (= 0 (FDim$Int$ Node.value)) :named ax_19))
   (assert (! (= 0 (FDim$ref$ AVLTree.root)) :named ax_20))
   (assert (! (= 0 (FDim$ref$ Node.left)) :named ax_21))
   (assert (! (= 0 (FDim$ref$ Node.right)) :named ax_22))
   (assert (! (= 0 (Seq@Length$BoxType$ Seq@Empty$BoxType$)) :named ax_23))
   (assert (! (= 0 (Seq@Length$ref$ Seq@Empty$ref$)) :named ax_24))
   (assert (! (= class.AVLTree (DeclType$$@Map@@BoxType@To@Bool@@$ AVLTree.Contents)) :named ax_25))
   (assert (! (= class.AVLTree (DeclType$$@Map@@BoxType@To@Bool@@$ AVLTree.Repr)) :named ax_26))
   (assert (! (= class.AVLTree (DeclType$ref$ AVLTree.root)) :named ax_27))
   (assert (! (= class.AVLTree (dtype this)) :named ax_28))
   (assert (! (= class.Node (DeclType$$@Map@@BoxType@To@Bool@@$ Node.Contents)) :named ax_29))
   (assert (! (= class.Node (DeclType$$@Map@@BoxType@To@Bool@@$ Node.Repr)) :named ax_30))
   (assert (! (= class.Node (DeclType$Int$ Node.balance)) :named ax_31))
   (assert (! (= class.Node (DeclType$Int$ Node.value)) :named ax_32))
   (assert (! (= class.Node (DeclType$ref$ Node.left)) :named ax_33))
   (assert (! (= class.Node (DeclType$ref$ Node.right)) :named ax_34))
   (assert (! (= false $@bf_51) :named ax_35))
   (assert (! (= true $@bf_50) :named ax_36))
   (assert (! (= true ($@bf_70 null)) :named ax_37))
   (assert (! (=> (not (= t@6 null)) (and (and (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))) :named ax_38))
   (assert (! (=> (not (= t@6 null)) (and (and (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) Set@Empty$BoxType$))) (and (and (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (and (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ t@6)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ t@6))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ t@6))))))))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (forall( (|i#16_$3| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$3|)) (< |i#16_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (forall( (|i#17_$2| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$2|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value) |i#17_$2|)))))) :named ax_39))
   (assert (! (=> (not (= t@6 null)) (and (and (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.balance) 0)))) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))) :named ax_40))
   (assert (! (forall ((|i_1| Field$Bool$)(|i| ref)(|m| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v| Bool))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_41))
   (assert (! (forall ((|i_13| Field$Int$)(|i_12| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_6| Int))(!(= v_6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_6 i_12 i_13 v_6) i_12 i_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_6 i_12 i_13 v_6) i_12 i_13)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_42))
   (assert (! (forall ((|i_25| Field$ref$)(|i_24| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_12| ref))(!(= v_12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_12 i_24 i_25 v_12) i_24 i_25)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_12 i_24 i_25 v_12) i_24 i_25)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_43))
   (assert (! (forall ((|i_37| Field$BoxType$)(|i_36| ref)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_18| BoxType))(!(= v_18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_18 i_36 i_37 v_18) i_36 i_37)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_18 i_36 i_37 v_18) i_36 i_37)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_44))
   (assert (! (forall ((|i_49| Field$$@Map@@BoxType@To@Bool@@$)(|i_48| ref)(|m_24| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_24| $@Map@@BoxType@To@Bool@@))(!(= v_24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_24 i_48 i_49 v_24) i_48 i_49)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_24 i_48 i_49 v_24) i_48 i_49)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_45))
   (assert (! (forall ((|v_1| Bool)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_3| Field$Bool$)(|j_1| Field$Bool$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_1 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_46))
   (assert (! (forall ((|v_10| Int)(|i_21| Field$Int$)(|i_20| ref)(|j_17| Field$ref$)(|j_16| ref)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_10 j_16 j_17) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_10 i_20 i_21 v_10) j_16 j_17)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_10 i_20 i_21 v_10) j_16 j_17)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Int :weight 0 )) :named ax_47))
   (assert (! (forall ((|v_11| Int)(|i_23| Field$Int$)(|i_22| ref)(|j_19| Field$$@Map@@BoxType@To@Bool@@$)(|j_18| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_11 j_18 j_19) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_11 i_22 i_23 v_11) j_18 j_19)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_11 i_22 i_23 v_11) j_18 j_19)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__Int :weight 0 )) :named ax_48))
   (assert (! (forall ((|v_13| ref)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_27| Field$ref$)(|j_21| Field$ref$)(|i_26| ref)(|j_20| ref))(!(=> (or (not (= j_21 i_27)) (not (= j_20 i_26))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_13 j_20 j_21) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_13 i_26 i_27 v_13) j_20 j_21))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_13 i_26 i_27 v_13) j_20 j_21)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_49))
   (assert (! (forall ((|v_14| ref)(|i_29| Field$ref$)(|i_28| ref)(|j_23| Field$BoxType$)(|j_22| ref)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_14 j_22 j_23) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_14 i_28 i_29 v_14) j_22 j_23)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_14 i_28 i_29 v_14) j_22 j_23)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__ref :weight 0 )) :named ax_50))
   (assert (! (forall ((|v_15| ref)(|i_31| Field$ref$)(|i_30| ref)(|j_25| Field$Bool$)(|j_24| ref)(|m_15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_15 j_24 j_25) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_15 i_30 i_31 v_15) j_24 j_25)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_15 i_30 i_31 v_15) j_24 j_25)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_51))
   (assert (! (forall ((|v_16| ref)(|i_33| Field$ref$)(|i_32| ref)(|j_27| Field$Int$)(|j_26| ref)(|m_16| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 j_26 j_27) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_16 i_32 i_33 v_16) j_26 j_27)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_16 i_32 i_33 v_16) j_26 j_27)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__ref :weight 0 )) :named ax_52))
   (assert (! (forall ((|v_17| ref)(|i_35| Field$ref$)(|i_34| ref)(|j_29| Field$$@Map@@BoxType@To@Bool@@$)(|j_28| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_17 j_28 j_29) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_17 i_34 i_35 v_17) j_28 j_29)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_17 i_34 i_35 v_17) j_28 j_29)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__ref :weight 0 )) :named ax_53))
   (assert (! (forall ((|v_19| BoxType)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_39| Field$BoxType$)(|j_31| Field$BoxType$)(|i_38| ref)(|j_30| ref))(!(=> (or (not (= j_31 i_39)) (not (= j_30 i_38))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_19 j_30 j_31) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_19 i_38 i_39 v_19) j_30 j_31))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_19 i_38 i_39 v_19) j_30 j_31)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_54))
   (assert (! (forall ((|v_2| Bool)(|i_5| Field$Bool$)(|i_4| ref)(|j_3| Field$BoxType$)(|j_2| ref)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_2 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_2 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__Bool :weight 0 )) :named ax_55))
   (assert (! (forall ((|v_20| BoxType)(|i_41| Field$BoxType$)(|i_40| ref)(|j_33| Field$Bool$)(|j_32| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_20 j_32 j_33) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_20 i_40 i_41 v_20) j_32 j_33)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_20 i_40 i_41 v_20) j_32 j_33)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__BoxType :weight 0 )) :named ax_56))
   (assert (! (forall ((|v_21| BoxType)(|i_43| Field$BoxType$)(|i_42| ref)(|j_35| Field$Int$)(|j_34| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_21 j_34 j_35) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_21 i_42 i_43 v_21) j_34 j_35)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_21 i_42 i_43 v_21) j_34 j_35)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__BoxType :weight 0 )) :named ax_57))
   (assert (! (forall ((|v_22| BoxType)(|i_45| Field$BoxType$)(|i_44| ref)(|j_37| Field$ref$)(|j_36| ref)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_22 j_36 j_37) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_22 i_44 i_45 v_22) j_36 j_37)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_22 i_44 i_45 v_22) j_36 j_37)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__BoxType :weight 0 )) :named ax_58))
   (assert (! (forall ((|v_23| BoxType)(|i_47| Field$BoxType$)(|i_46| ref)(|j_39| Field$$@Map@@BoxType@To@Bool@@$)(|j_38| ref)(|m_23| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_23 j_38 j_39) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_23 i_46 i_47 v_23) j_38 j_39)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_23 i_46 i_47 v_23) j_38 j_39)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__BoxType :weight 0 )) :named ax_59))
   (assert (! (forall ((|v_25| $@Map@@BoxType@To@Bool@@)(|m_25| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_51| Field$$@Map@@BoxType@To@Bool@@$)(|j_41| Field$$@Map@@BoxType@To@Bool@@$)(|i_50| ref)(|j_40| ref))(!(=> (or (not (= j_41 i_51)) (not (= j_40 i_50))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_25 j_40 j_41) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_25 i_50 i_51 v_25) j_40 j_41))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_25 i_50 i_51 v_25) j_40 j_41)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_60))
   (assert (! (forall ((|v_26| $@Map@@BoxType@To@Bool@@)(|i_53| Field$$@Map@@BoxType@To@Bool@@$)(|i_52| ref)(|j_43| Field$BoxType$)(|j_42| ref)(|m_26| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_26 j_42 j_43) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_26 i_52 i_53 v_26) j_42 j_43)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_26 i_52 i_53 v_26) j_42 j_43)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_61))
   (assert (! (forall ((|v_27| $@Map@@BoxType@To@Bool@@)(|i_55| Field$$@Map@@BoxType@To@Bool@@$)(|i_54| ref)(|j_45| Field$Bool$)(|j_44| ref)(|m_27| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_27 j_44 j_45) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_27 i_54 i_55 v_27) j_44 j_45)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_27 i_54 i_55 v_27) j_44 j_45)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_62))
   (assert (! (forall ((|v_28| $@Map@@BoxType@To@Bool@@)(|i_57| Field$$@Map@@BoxType@To@Bool@@$)(|i_56| ref)(|j_47| Field$Int$)(|j_46| ref)(|m_28| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_28 j_46 j_47) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_28 i_56 i_57 v_28) j_46 j_47)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_28 i_56 i_57 v_28) j_46 j_47)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_63))
   (assert (! (forall ((|v_29| $@Map@@BoxType@To@Bool@@)(|i_59| Field$$@Map@@BoxType@To@Bool@@$)(|i_58| ref)(|j_49| Field$ref$)(|j_48| ref)(|m_29| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_29 j_48 j_49) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_29 i_58 i_59 v_29) j_48 j_49)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_29 i_58 i_59 v_29) j_48 j_49)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__$@Map@@BoxType@To@Bool@@ :weight 0 )) :named ax_64))
   (assert (! (forall ((|v_3| Bool)(|i_7| Field$Bool$)(|i_6| ref)(|j_5| Field$Int$)(|j_4| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_3 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__Bool :weight 0 )) :named ax_65))
   (assert (! (forall ((|v_4| Bool)(|i_9| Field$Bool$)(|i_8| ref)(|j_7| Field$ref$)(|j_6| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_4 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_4 i_8 i_9 v_4) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_4 i_8 i_9 v_4) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Bool :weight 0 )) :named ax_66))
   (assert (! (forall ((|v_5| Bool)(|i_11| Field$Bool$)(|i_10| ref)(|j_9| Field$$@Map@@BoxType@To@Bool@@$)(|j_8| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ m_5 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_5 i_10 i_11 v_5) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_5 i_10 i_11 v_5) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@BoxType@To@Bool@@__Bool :weight 0 )) :named ax_67))
   (assert (! (forall ((|v_7| Int)(|m_7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_15| Field$Int$)(|j_11| Field$Int$)(|i_14| ref)(|j_10| ref))(!(=> (or (not (= j_11 i_15)) (not (= j_10 i_14))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_7 j_10 j_11) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_7 i_14 i_15 v_7) j_10 j_11))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_7 i_14 i_15 v_7) j_10 j_11)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_68))
   (assert (! (forall ((|v_8| Int)(|i_17| Field$Int$)(|i_16| ref)(|j_13| Field$BoxType$)(|j_12| ref)(|m_8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ m_8 j_12 j_13) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_8 i_16 i_17 v_8) j_12 j_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_8 i_16 i_17 v_8) j_12 j_13)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__BoxType__Int :weight 0 )) :named ax_69))
   (assert (! (forall ((|v_9| Int)(|i_19| Field$Int$)(|i_18| ref)(|j_15| Field$Bool$)(|j_14| ref)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_9 j_14 j_15) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_9 i_18 i_19 v_9) j_14 j_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_9 i_18 i_19 v_9) j_14 j_15)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Int :weight 0 )) :named ax_70))
   (assert (! (forall( (|$h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$0| ref))(!(=> (and (and ($IsGoodHeap |$h_$0|) (not (= null |$o_$0|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$0| |$o_$0| alloc)) (forall( (|$t#1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$0| |$o_$0| AVLTree.Repr) |$t#1|) (or (= null ($Unbox$ref$ |$t#1|)) (and (= (dtype ($Unbox$ref$ |$t#1|)) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$0| ($Unbox$ref$ |$t#1|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$0| |$o_$0| AVLTree.Repr) |$t#1|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$0| |$o_$0| AVLTree.Repr)))) :named ax_71))
   (assert (! (forall( (|$h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$2| ref))(!(=> (and (and ($IsGoodHeap |$h_$1|) (not (= null |$o_$2|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$1| |$o_$2| alloc)) (or (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$1| |$o_$2| Node.left)) (and (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$1| |$o_$2| Node.left)) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$1| |$o_$2| Node.left) alloc))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$1| |$o_$2| Node.left)))) :named ax_72))
   (assert (! (forall( (|$h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$3| ref))(!(=> (and (and ($IsGoodHeap |$h_$2|) (not (= null |$o_$3|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$2| |$o_$3| alloc)) (or (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$3| Node.right)) (and (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$3| Node.right)) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$3| Node.right) alloc))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h_$2| |$o_$3| Node.right)))) :named ax_73))
   (assert (! (forall( (|$h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o_$4| ref))(!(=> (and (and ($IsGoodHeap |$h_$3|) (not (= null |$o_$4|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$3| |$o_$4| alloc)) (forall( (|$t#1_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$3| |$o_$4| Node.Repr) |$t#1_$0|) (or (= null ($Unbox$ref$ |$t#1_$0|)) (and (= (dtype ($Unbox$ref$ |$t#1_$0|)) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h_$3| ($Unbox$ref$ |$t#1_$0|) alloc))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$3| |$o_$4| Node.Repr) |$t#1_$0|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h_$3| |$o_$4| Node.Repr)))) :named ax_74))
   (assert (! (forall( (|$h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$o| ref))(!(=> (and (and ($IsGoodHeap |$h|) (not (= null |$o|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h| |$o| alloc)) (or (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| AVLTree.root)) (and (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| AVLTree.root)) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| AVLTree.root) alloc))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h| |$o| AVLTree.root)))) :named ax_75))
   (assert (! (forall( (|$h0_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12_$3| ref))(!(=> (and (and (or (= null |n#12_$3|) (and (= (dtype |n#12_$3|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |n#12_$3| alloc))) (and (or (= null |n#12_$3|) (and (= (dtype |n#12_$3|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |n#12_$3| alloc))) (and ($IsGoodHeap |$h1_$0|) ($IsGoodHeap |$h0_$0|)))) ($HeapSucc |$h0_$0| |$h1_$0|)) (=> (and (forall( (|$o_$5_$4| ref) (|$f_$0_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= |n#12_$3| |$o_$5_$4|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |n#12_$3| Node.Repr) ($Box$ref$ |$o_$5_$4|)) (not (= null |n#12_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$5_$4| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$5_$4| alloc) (not (= null |$o_$5_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$0| |$o_$5_$4| |$f_$0_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |$o_$5_$4| |$f_$0_$4|)))) (and (forall( (|$o_$5_$3| ref) (|$f_$0_$3| Field$BoxType$))(=> (and (or (= |n#12_$3| |$o_$5_$3|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |n#12_$3| Node.Repr) ($Box$ref$ |$o_$5_$3|)) (not (= null |n#12_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$5_$3| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$5_$3| alloc) (not (= null |$o_$5_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$0| |$o_$5_$3| |$f_$0_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$0| |$o_$5_$3| |$f_$0_$3|)))) (and (forall( (|$o_$5_$2| ref) (|$f_$0_$2| Field$ref$))(=> (and (or (= |n#12_$3| |$o_$5_$2|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |n#12_$3| Node.Repr) ($Box$ref$ |$o_$5_$2|)) (not (= null |n#12_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$5_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$5_$2| alloc) (not (= null |$o_$5_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$0| |$o_$5_$2| |$f_$0_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$0| |$o_$5_$2| |$f_$0_$2|)))) (and (forall( (|$o_$5_$1| ref) (|$f_$0_$1| Field$Int$))(=> (and (or (= |n#12_$3| |$o_$5_$1|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |n#12_$3| Node.Repr) ($Box$ref$ |$o_$5_$1|)) (not (= null |n#12_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$5_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$5_$1| alloc) (not (= null |$o_$5_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$0| |$o_$5_$1| |$f_$0_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$0| |$o_$5_$1| |$f_$0_$1|)))) (forall( (|$o_$5_$0| ref) (|$f_$0_$0| Field$Bool$))(=> (and (or (= |n#12_$3| |$o_$5_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$0| |n#12_$3| Node.Repr) ($Box$ref$ |$o_$5_$0|)) (not (= null |n#12_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$5_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$5_$0| alloc) (not (= null |$o_$5_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$0| |$o_$5_$0| |$f_$0_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$0| |$o_$5_$0| |$f_$0_$0|)))))))) (= (Node.Balanced |$h1_$0| |n#12_$3|) (Node.Balanced |$h0_$0| |n#12_$3|))))  :pattern ( ($HeapSucc |$h0_$0| |$h1_$0|) (Node.Balanced |$h1_$0| |n#12_$3|)))) :named ax_76))
   (assert (! (forall( (|$h0_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12_$4| ref))(!(=> (and (and (or (= null |n#12_$4|) (and (= (dtype |n#12_$4|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |n#12_$4| alloc))) (and (or (= null |n#12_$4|) (and (= (dtype |n#12_$4|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |n#12_$4| alloc))) (and ($IsGoodHeap |$h1_$1|) ($IsGoodHeap |$h0_$1|)))) ($HeapSucc |$h0_$1| |$h1_$1|)) (=> (and (forall( (|$o_$6_$4| ref) (|$f_$1_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= |n#12_$4| |$o_$6_$4|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |n#12_$4| Node.Repr) ($Box$ref$ |$o_$6_$4|)) (not (= null |n#12_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$6_$4| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$6_$4| alloc) (not (= null |$o_$6_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$1| |$o_$6_$4| |$f_$1_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |$o_$6_$4| |$f_$1_$4|)))) (and (forall( (|$o_$6_$3| ref) (|$f_$1_$3| Field$BoxType$))(=> (and (or (= |n#12_$4| |$o_$6_$3|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |n#12_$4| Node.Repr) ($Box$ref$ |$o_$6_$3|)) (not (= null |n#12_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$6_$3| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$6_$3| alloc) (not (= null |$o_$6_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$1| |$o_$6_$3| |$f_$1_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$1| |$o_$6_$3| |$f_$1_$3|)))) (and (forall( (|$o_$6_$2| ref) (|$f_$1_$2| Field$ref$))(=> (and (or (= |n#12_$4| |$o_$6_$2|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |n#12_$4| Node.Repr) ($Box$ref$ |$o_$6_$2|)) (not (= null |n#12_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$6_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$6_$2| alloc) (not (= null |$o_$6_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$1| |$o_$6_$2| |$f_$1_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$1| |$o_$6_$2| |$f_$1_$2|)))) (and (forall( (|$o_$6_$1| ref) (|$f_$1_$1| Field$Int$))(=> (and (or (= |n#12_$4| |$o_$6_$1|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |n#12_$4| Node.Repr) ($Box$ref$ |$o_$6_$1|)) (not (= null |n#12_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$6_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$6_$1| alloc) (not (= null |$o_$6_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$1| |$o_$6_$1| |$f_$1_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$1| |$o_$6_$1| |$f_$1_$1|)))) (forall( (|$o_$6_$0| ref) (|$f_$1_$0| Field$Bool$))(=> (and (or (= |n#12_$4| |$o_$6_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$1| |n#12_$4| Node.Repr) ($Box$ref$ |$o_$6_$0|)) (not (= null |n#12_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$6_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$6_$0| alloc) (not (= null |$o_$6_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$1| |$o_$6_$0| |$f_$1_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$1| |$o_$6_$0| |$f_$1_$0|)))))))) (= (Node.Balanced@limited |$h1_$1| |n#12_$4|) (Node.Balanced@limited |$h0_$1| |n#12_$4|))))  :pattern ( ($HeapSucc |$h0_$1| |$h1_$1|) (Node.Balanced@limited |$h1_$1| |n#12_$4|)))) :named ax_77))
   (assert (! (forall( (|$h0_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13_$3| ref))(!(=> (and (and (or (= null |n#13_$3|) (and (= (dtype |n#13_$3|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |n#13_$3| alloc))) (and (or (= null |n#13_$3|) (and (= (dtype |n#13_$3|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |n#13_$3| alloc))) (and ($IsGoodHeap |$h1_$2|) ($IsGoodHeap |$h0_$2|)))) ($HeapSucc |$h0_$2| |$h1_$2|)) (=> (and (forall( (|$o_$7_$4| ref) (|$f_$2_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= |n#13_$3| |$o_$7_$4|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |n#13_$3| Node.Repr) ($Box$ref$ |$o_$7_$4|)) (not (= null |n#13_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$7_$4| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$7_$4| alloc) (not (= null |$o_$7_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$2| |$o_$7_$4| |$f_$2_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |$o_$7_$4| |$f_$2_$4|)))) (and (forall( (|$o_$7_$3| ref) (|$f_$2_$3| Field$BoxType$))(=> (and (or (= |n#13_$3| |$o_$7_$3|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |n#13_$3| Node.Repr) ($Box$ref$ |$o_$7_$3|)) (not (= null |n#13_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$7_$3| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$7_$3| alloc) (not (= null |$o_$7_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$2| |$o_$7_$3| |$f_$2_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$2| |$o_$7_$3| |$f_$2_$3|)))) (and (forall( (|$o_$7_$2| ref) (|$f_$2_$2| Field$ref$))(=> (and (or (= |n#13_$3| |$o_$7_$2|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |n#13_$3| Node.Repr) ($Box$ref$ |$o_$7_$2|)) (not (= null |n#13_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$7_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$7_$2| alloc) (not (= null |$o_$7_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$2| |$o_$7_$2| |$f_$2_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$2| |$o_$7_$2| |$f_$2_$2|)))) (and (forall( (|$o_$7_$1| ref) (|$f_$2_$1| Field$Int$))(=> (and (or (= |n#13_$3| |$o_$7_$1|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |n#13_$3| Node.Repr) ($Box$ref$ |$o_$7_$1|)) (not (= null |n#13_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$7_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$7_$1| alloc) (not (= null |$o_$7_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$2| |$o_$7_$1| |$f_$2_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$2| |$o_$7_$1| |$f_$2_$1|)))) (forall( (|$o_$7_$0| ref) (|$f_$2_$0| Field$Bool$))(=> (and (or (= |n#13_$3| |$o_$7_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$2| |n#13_$3| Node.Repr) ($Box$ref$ |$o_$7_$0|)) (not (= null |n#13_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$7_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$7_$0| alloc) (not (= null |$o_$7_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$2| |$o_$7_$0| |$f_$2_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$2| |$o_$7_$0| |$f_$2_$0|)))))))) (= (Node.BalanceValid |$h1_$2| |n#13_$3|) (Node.BalanceValid |$h0_$2| |n#13_$3|))))  :pattern ( ($HeapSucc |$h0_$2| |$h1_$2|) (Node.BalanceValid |$h1_$2| |n#13_$3|)))) :named ax_78))
   (assert (! (forall( (|$h0_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13_$4| ref))(!(=> (and (and (or (= null |n#13_$4|) (and (= (dtype |n#13_$4|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |n#13_$4| alloc))) (and (or (= null |n#13_$4|) (and (= (dtype |n#13_$4|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |n#13_$4| alloc))) (and ($IsGoodHeap |$h1_$3|) ($IsGoodHeap |$h0_$3|)))) ($HeapSucc |$h0_$3| |$h1_$3|)) (=> (and (forall( (|$o_$8_$4| ref) (|$f_$3_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= |n#13_$4| |$o_$8_$4|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |n#13_$4| Node.Repr) ($Box$ref$ |$o_$8_$4|)) (not (= null |n#13_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$8_$4| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$8_$4| alloc) (not (= null |$o_$8_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$3| |$o_$8_$4| |$f_$3_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |$o_$8_$4| |$f_$3_$4|)))) (and (forall( (|$o_$8_$3| ref) (|$f_$3_$3| Field$BoxType$))(=> (and (or (= |n#13_$4| |$o_$8_$3|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |n#13_$4| Node.Repr) ($Box$ref$ |$o_$8_$3|)) (not (= null |n#13_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$8_$3| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$8_$3| alloc) (not (= null |$o_$8_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$3| |$o_$8_$3| |$f_$3_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$3| |$o_$8_$3| |$f_$3_$3|)))) (and (forall( (|$o_$8_$2| ref) (|$f_$3_$2| Field$ref$))(=> (and (or (= |n#13_$4| |$o_$8_$2|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |n#13_$4| Node.Repr) ($Box$ref$ |$o_$8_$2|)) (not (= null |n#13_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$8_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$8_$2| alloc) (not (= null |$o_$8_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$3| |$o_$8_$2| |$f_$3_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$3| |$o_$8_$2| |$f_$3_$2|)))) (and (forall( (|$o_$8_$1| ref) (|$f_$3_$1| Field$Int$))(=> (and (or (= |n#13_$4| |$o_$8_$1|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |n#13_$4| Node.Repr) ($Box$ref$ |$o_$8_$1|)) (not (= null |n#13_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$8_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$8_$1| alloc) (not (= null |$o_$8_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$3| |$o_$8_$1| |$f_$3_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$3| |$o_$8_$1| |$f_$3_$1|)))) (forall( (|$o_$8_$0| ref) (|$f_$3_$0| Field$Bool$))(=> (and (or (= |n#13_$4| |$o_$8_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$3| |n#13_$4| Node.Repr) ($Box$ref$ |$o_$8_$0|)) (not (= null |n#13_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$8_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$8_$0| alloc) (not (= null |$o_$8_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$3| |$o_$8_$0| |$f_$3_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$3| |$o_$8_$0| |$f_$3_$0|)))))))) (= (Node.BalanceValid@limited |$h1_$3| |n#13_$4|) (Node.BalanceValid@limited |$h0_$3| |n#13_$4|))))  :pattern ( ($HeapSucc |$h0_$3| |$h1_$3|) (Node.BalanceValid@limited |$h1_$3| |n#13_$4|)))) :named ax_79))
   (assert (! (forall( (|$h0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#14_$3| ref))(!(=> (and (and (or (= null |n#14_$3|) (and (= (dtype |n#14_$3|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |n#14_$3| alloc))) (and (or (= null |n#14_$3|) (and (= (dtype |n#14_$3|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |n#14_$3| alloc))) (and ($IsGoodHeap |$h1_$4|) ($IsGoodHeap |$h0_$4|)))) ($HeapSucc |$h0_$4| |$h1_$4|)) (=> (and (forall( (|$o_$9_$4| ref) (|$f_$4_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$9_$4| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$9_$4| alloc) (not (= null |$o_$9_$4|)))) (not (= null |n#14_$3|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$4| |n#14_$3| Node.Repr) ($Box$ref$ |$o_$9_$4|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$4| |$o_$9_$4| |$f_$4_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$4| |$o_$9_$4| |$f_$4_$4|)))) (and (forall( (|$o_$9_$3| ref) (|$f_$4_$3| Field$BoxType$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$9_$3| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$9_$3| alloc) (not (= null |$o_$9_$3|)))) (not (= null |n#14_$3|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$4| |n#14_$3| Node.Repr) ($Box$ref$ |$o_$9_$3|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$4| |$o_$9_$3| |$f_$4_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$4| |$o_$9_$3| |$f_$4_$3|)))) (and (forall( (|$o_$9_$2| ref) (|$f_$4_$2| Field$ref$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$9_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$9_$2| alloc) (not (= null |$o_$9_$2|)))) (not (= null |n#14_$3|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$4| |n#14_$3| Node.Repr) ($Box$ref$ |$o_$9_$2|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$4| |$o_$9_$2| |$f_$4_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$4| |$o_$9_$2| |$f_$4_$2|)))) (and (forall( (|$o_$9_$1| ref) (|$f_$4_$1| Field$Int$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$9_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$9_$1| alloc) (not (= null |$o_$9_$1|)))) (not (= null |n#14_$3|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$4| |n#14_$3| Node.Repr) ($Box$ref$ |$o_$9_$1|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$4| |$o_$9_$1| |$f_$4_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$4| |$o_$9_$1| |$f_$4_$1|)))) (forall( (|$o_$9_$0| ref) (|$f_$4_$0| Field$Bool$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$9_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$9_$0| alloc) (not (= null |$o_$9_$0|)))) (not (= null |n#14_$3|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$4| |n#14_$3| Node.Repr) ($Box$ref$ |$o_$9_$0|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$4| |$o_$9_$0| |$f_$4_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$4| |$o_$9_$0| |$f_$4_$0|)))))))) (= (Node.Height |$h1_$4| |n#14_$3|) (Node.Height |$h0_$4| |n#14_$3|))))  :pattern ( ($HeapSucc |$h0_$4| |$h1_$4|) (Node.Height |$h1_$4| |n#14_$3|)))) :named ax_80))
   (assert (! (forall( (|$h0_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#14_$4| ref))(!(=> (and (and (or (= null |n#14_$4|) (and (= (dtype |n#14_$4|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |n#14_$4| alloc))) (and (or (= null |n#14_$4|) (and (= (dtype |n#14_$4|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |n#14_$4| alloc))) (and ($IsGoodHeap |$h1_$5|) ($IsGoodHeap |$h0_$5|)))) ($HeapSucc |$h0_$5| |$h1_$5|)) (=> (and (forall( (|$o_$10_$4| ref) (|$f_$5_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$10_$4| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$10_$4| alloc) (not (= null |$o_$10_$4|)))) (not (= null |n#14_$4|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |n#14_$4| Node.Repr) ($Box$ref$ |$o_$10_$4|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$5| |$o_$10_$4| |$f_$5_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |$o_$10_$4| |$f_$5_$4|)))) (and (forall( (|$o_$10_$3| ref) (|$f_$5_$3| Field$BoxType$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$10_$3| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$10_$3| alloc) (not (= null |$o_$10_$3|)))) (not (= null |n#14_$4|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |n#14_$4| Node.Repr) ($Box$ref$ |$o_$10_$3|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$5| |$o_$10_$3| |$f_$5_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$5| |$o_$10_$3| |$f_$5_$3|)))) (and (forall( (|$o_$10_$2| ref) (|$f_$5_$2| Field$ref$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$10_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$10_$2| alloc) (not (= null |$o_$10_$2|)))) (not (= null |n#14_$4|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |n#14_$4| Node.Repr) ($Box$ref$ |$o_$10_$2|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$5| |$o_$10_$2| |$f_$5_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$5| |$o_$10_$2| |$f_$5_$2|)))) (and (forall( (|$o_$10_$1| ref) (|$f_$5_$1| Field$Int$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$10_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$10_$1| alloc) (not (= null |$o_$10_$1|)))) (not (= null |n#14_$4|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |n#14_$4| Node.Repr) ($Box$ref$ |$o_$10_$1|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$5| |$o_$10_$1| |$f_$5_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$5| |$o_$10_$1| |$f_$5_$1|)))) (forall( (|$o_$10_$0| ref) (|$f_$5_$0| Field$Bool$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$10_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$10_$0| alloc) (not (= null |$o_$10_$0|)))) (not (= null |n#14_$4|))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$5| |n#14_$4| Node.Repr) ($Box$ref$ |$o_$10_$0|))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$5| |$o_$10_$0| |$f_$5_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$5| |$o_$10_$0| |$f_$5_$0|)))))))) (= (Node.Height@limited |$h1_$5| |n#14_$4|) (Node.Height@limited |$h0_$5| |n#14_$4|))))  :pattern ( ($HeapSucc |$h0_$5| |$h1_$5|) (Node.Height@limited |$h1_$5| |n#14_$4|)))) :named ax_81))
   (assert (! (forall( (|$h0_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15_$3| ref))(!(=> (and (and (or (= null |n#15_$3|) (and (= (dtype |n#15_$3|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |n#15_$3| alloc))) (and (or (= null |n#15_$3|) (and (= (dtype |n#15_$3|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |n#15_$3| alloc))) (and ($IsGoodHeap |$h1_$6|) ($IsGoodHeap |$h0_$6|)))) ($HeapSucc |$h0_$6| |$h1_$6|)) (=> (and (forall( (|$o_$11_$4| ref) (|$f_$6_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= |n#15_$3| |$o_$11_$4|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |n#15_$3| Node.Repr) ($Box$ref$ |$o_$11_$4|)) (not (= null |n#15_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$11_$4| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$11_$4| alloc) (not (= null |$o_$11_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$6| |$o_$11_$4| |$f_$6_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |$o_$11_$4| |$f_$6_$4|)))) (and (forall( (|$o_$11_$3| ref) (|$f_$6_$3| Field$BoxType$))(=> (and (or (= |n#15_$3| |$o_$11_$3|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |n#15_$3| Node.Repr) ($Box$ref$ |$o_$11_$3|)) (not (= null |n#15_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$11_$3| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$11_$3| alloc) (not (= null |$o_$11_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$6| |$o_$11_$3| |$f_$6_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$6| |$o_$11_$3| |$f_$6_$3|)))) (and (forall( (|$o_$11_$2| ref) (|$f_$6_$2| Field$ref$))(=> (and (or (= |n#15_$3| |$o_$11_$2|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |n#15_$3| Node.Repr) ($Box$ref$ |$o_$11_$2|)) (not (= null |n#15_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$11_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$11_$2| alloc) (not (= null |$o_$11_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$6| |$o_$11_$2| |$f_$6_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$6| |$o_$11_$2| |$f_$6_$2|)))) (and (forall( (|$o_$11_$1| ref) (|$f_$6_$1| Field$Int$))(=> (and (or (= |n#15_$3| |$o_$11_$1|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |n#15_$3| Node.Repr) ($Box$ref$ |$o_$11_$1|)) (not (= null |n#15_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$11_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$11_$1| alloc) (not (= null |$o_$11_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$6| |$o_$11_$1| |$f_$6_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$6| |$o_$11_$1| |$f_$6_$1|)))) (forall( (|$o_$11_$0| ref) (|$f_$6_$0| Field$Bool$))(=> (and (or (= |n#15_$3| |$o_$11_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$6| |n#15_$3| Node.Repr) ($Box$ref$ |$o_$11_$0|)) (not (= null |n#15_$3|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$11_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$11_$0| alloc) (not (= null |$o_$11_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$6| |$o_$11_$0| |$f_$6_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$6| |$o_$11_$0| |$f_$6_$0|)))))))) (= (Node.Valid |$h1_$6| |n#15_$3|) (Node.Valid |$h0_$6| |n#15_$3|))))  :pattern ( ($HeapSucc |$h0_$6| |$h1_$6|) (Node.Valid |$h1_$6| |n#15_$3|)))) :named ax_82))
   (assert (! (forall( (|$h0_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15_$4| ref))(!(=> (and (and (or (= null |n#15_$4|) (and (= (dtype |n#15_$4|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$7| |n#15_$4| alloc))) (and (or (= null |n#15_$4|) (and (= (dtype |n#15_$4|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$7| |n#15_$4| alloc))) (and ($IsGoodHeap |$h1_$7|) ($IsGoodHeap |$h0_$7|)))) ($HeapSucc |$h0_$7| |$h1_$7|)) (=> (and (forall( (|$o_$12_$4| ref) (|$f_$7_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= |n#15_$4| |$o_$12_$4|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$7| |n#15_$4| Node.Repr) ($Box$ref$ |$o_$12_$4|)) (not (= null |n#15_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$7| |$o_$12_$4| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$7| |$o_$12_$4| alloc) (not (= null |$o_$12_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1_$7| |$o_$12_$4| |$f_$7_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$7| |$o_$12_$4| |$f_$7_$4|)))) (and (forall( (|$o_$12_$3| ref) (|$f_$7_$3| Field$BoxType$))(=> (and (or (= |n#15_$4| |$o_$12_$3|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$7| |n#15_$4| Node.Repr) ($Box$ref$ |$o_$12_$3|)) (not (= null |n#15_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$7| |$o_$12_$3| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$7| |$o_$12_$3| alloc) (not (= null |$o_$12_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1_$7| |$o_$12_$3| |$f_$7_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0_$7| |$o_$12_$3| |$f_$7_$3|)))) (and (forall( (|$o_$12_$2| ref) (|$f_$7_$2| Field$ref$))(=> (and (or (= |n#15_$4| |$o_$12_$2|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$7| |n#15_$4| Node.Repr) ($Box$ref$ |$o_$12_$2|)) (not (= null |n#15_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$7| |$o_$12_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$7| |$o_$12_$2| alloc) (not (= null |$o_$12_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1_$7| |$o_$12_$2| |$f_$7_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0_$7| |$o_$12_$2| |$f_$7_$2|)))) (and (forall( (|$o_$12_$1| ref) (|$f_$7_$1| Field$Int$))(=> (and (or (= |n#15_$4| |$o_$12_$1|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$7| |n#15_$4| Node.Repr) ($Box$ref$ |$o_$12_$1|)) (not (= null |n#15_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$7| |$o_$12_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$7| |$o_$12_$1| alloc) (not (= null |$o_$12_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1_$7| |$o_$12_$1| |$f_$7_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0_$7| |$o_$12_$1| |$f_$7_$1|)))) (forall( (|$o_$12_$0| ref) (|$f_$7_$0| Field$Bool$))(=> (and (or (= |n#15_$4| |$o_$12_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0_$7| |n#15_$4| Node.Repr) ($Box$ref$ |$o_$12_$0|)) (not (= null |n#15_$4|)))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$7| |$o_$12_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$7| |$o_$12_$0| alloc) (not (= null |$o_$12_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1_$7| |$o_$12_$0| |$f_$7_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0_$7| |$o_$12_$0| |$f_$7_$0|)))))))) (= (Node.Valid@limited |$h1_$7| |n#15_$4|) (Node.Valid@limited |$h0_$7| |n#15_$4|))))  :pattern ( ($HeapSucc |$h0_$7| |$h1_$7|) (Node.Valid@limited |$h1_$7| |n#15_$4|)))) :named ax_83))
   (assert (! (forall( (|$h0_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44_$3| Int) (|b#45_$3| Int))(!(=> (and (and (<= 0 |b#45_$3|) (and (<= 0 |b#45_$3|) (and (<= 0 |a#44_$3|) (and (<= 0 |a#44_$3|) (and ($IsGoodHeap |$h1_$8|) ($IsGoodHeap |$h0_$8|)))))) ($HeapSucc |$h0_$8| |$h1_$8|)) (= (Math.max |$h1_$8| |a#44_$3| |b#45_$3|) (Math.max |$h0_$8| |a#44_$3| |b#45_$3|)))  :pattern ( ($HeapSucc |$h0_$8| |$h1_$8|) (Math.max |$h1_$8| |a#44_$3| |b#45_$3|)))) :named ax_84))
   (assert (! (forall( (|$h0_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44_$4| Int) (|b#45_$4| Int))(!(=> (and (and (<= 0 |b#45_$4|) (and (<= 0 |b#45_$4|) (and (<= 0 |a#44_$4|) (and (<= 0 |a#44_$4|) (and ($IsGoodHeap |$h1_$9|) ($IsGoodHeap |$h0_$9|)))))) ($HeapSucc |$h0_$9| |$h1_$9|)) (= (Math.max@limited |$h1_$9| |a#44_$4| |b#45_$4|) (Math.max@limited |$h0_$9| |a#44_$4| |b#45_$4|)))  :pattern ( ($HeapSucc |$h0_$9| |$h1_$9|) (Math.max@limited |$h1_$9| |a#44_$4| |b#45_$4|)))) :named ax_85))
   (assert (! (forall( (|$h0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|$h1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$1| ref))(!(=> (and (and (= (dtype |this_$1|) class.AVLTree) (and (and (= (dtype |this_$1|) class.AVLTree) (and (and (and ($IsGoodHeap |$h1|) ($IsGoodHeap |$h0|)) (not (= |this_$1| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |this_$1| alloc))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |this_$1| alloc))) ($HeapSucc |$h0| |$h1|)) (=> (and (forall( (|$o_$1_$4| ref) (|$f_$54| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= |this_$1| |$o_$1_$4|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| AVLTree.Repr) ($Box$ref$ |$o_$1_$4|))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$4| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$4| alloc) (not (= null |$o_$1_$4|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h1| |$o_$1_$4| |$f_$54|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |$o_$1_$4| |$f_$54|)))) (and (forall( (|$o_$1_$3| ref) (|$f_$53| Field$BoxType$))(=> (and (or (= |this_$1| |$o_$1_$3|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| AVLTree.Repr) ($Box$ref$ |$o_$1_$3|))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$3| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$3| alloc) (not (= null |$o_$1_$3|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h1| |$o_$1_$3| |$f_$53|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |$h0| |$o_$1_$3| |$f_$53|)))) (and (forall( (|$o_$1_$2| ref) (|$f_$52| Field$ref$))(=> (and (or (= |this_$1| |$o_$1_$2|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| AVLTree.Repr) ($Box$ref$ |$o_$1_$2|))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$2| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$2| alloc) (not (= null |$o_$1_$2|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h1| |$o_$1_$2| |$f_$52|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$h0| |$o_$1_$2| |$f_$52|)))) (and (forall( (|$o_$1_$1| ref) (|$f_$51| Field$Int$))(=> (and (or (= |this_$1| |$o_$1_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| AVLTree.Repr) ($Box$ref$ |$o_$1_$1|))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$1| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$1| alloc) (not (= null |$o_$1_$1|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h1| |$o_$1_$1| |$f_$51|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$h0| |$o_$1_$1| |$f_$51|)))) (forall( (|$o_$1_$0| ref) (|$f_$50| Field$Bool$))(=> (and (or (= |this_$1| |$o_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$h0| |this_$1| AVLTree.Repr) ($Box$ref$ |$o_$1_$0|))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$0| alloc) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$0| alloc) (not (= null |$o_$1_$0|))))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h1| |$o_$1_$0| |$f_$50|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$h0| |$o_$1_$0| |$f_$50|)))))))) (= (AVLTree.Valid |$h1| |this_$1|) (AVLTree.Valid |$h0| |this_$1|))))  :pattern ( ($HeapSucc |$h0| |$h1|) (AVLTree.Valid |$h1| |this_$1|)))) :named ax_86))
   (assert (! (forall( (|$Heap_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|this_$0| ref))(!(=> (or (AVLTree.Valid@canCall |$Heap_$0| |this_$0|) (and (= (dtype |this_$0|) class.AVLTree) (and (and ($IsGoodHeap |$Heap_$0|) (not (= |this_$0| null))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$0| |this_$0| alloc)))) (and (= (and (Node.Balanced |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)) (and (and (Node.Valid |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)) (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Contents)))) (Node.BalanceValid |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) (AVLTree.Valid |$Heap_$0| |this_$0|)) (and (and (=> (and (Node.Valid |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)) (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Contents)))) (Node.BalanceValid@canCall |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (=> (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Contents))) (Node.Valid@canCall |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)))) (=> (and (and (Node.Valid |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root)) (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| |this_$0| AVLTree.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root) Node.Contents)))) (Node.BalanceValid |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))) (Node.Balanced@canCall |$Heap_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$0| |this_$0| AVLTree.root))))))  :pattern ( (AVLTree.Valid |$Heap_$0| |this_$0|)))) :named ax_87))
   (assert (! (forall( (|$Heap_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12| ref))(!(= (Node.Balanced |$Heap_$1| |n#12|) (Node.Balanced@2 |$Heap_$1| |n#12|))  :pattern ( (Node.Balanced@2 |$Heap_$1| |n#12|)))) :named ax_88))
   (assert (! (forall( (|$Heap_$10| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#14_$0| ref))(!(= (Node.Height |$Heap_$10| |n#14_$0|) (Node.Height@limited |$Heap_$10| |n#14_$0|))  :pattern ( (Node.Height |$Heap_$10| |n#14_$0|)))) :named ax_89))
   (assert (! (forall( (|$Heap_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#14_$1| ref))(!(=> (or (and (Node.Valid |$Heap_$11| |n#14_$1|) (and (or (= null |n#14_$1|) (and (= (dtype |n#14_$1|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$11| |n#14_$1| alloc))) ($IsGoodHeap |$Heap_$11|))) (Node.Height@canCall |$Heap_$11| |n#14_$1|)) (and (<= 0 (Node.Height |$Heap_$11| |n#14_$1|)) (and (= (Node.Height |$Heap_$11| |n#14_$1|) (ite (= |n#14_$1| null) 0 (+ (Math.max |$Heap_$11| (Node.Height@limited |$Heap_$11| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$11| |n#14_$1| Node.left)) (Node.Height@limited |$Heap_$11| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$11| |n#14_$1| Node.right))) 1))) (=> (not (= null |n#14_$1|)) (and (and (Node.Height@canCall |$Heap_$11| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$11| |n#14_$1| Node.right)) (Node.Height@canCall |$Heap_$11| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$11| |n#14_$1| Node.left))) (Math.max@canCall |$Heap_$11| (Node.Height |$Heap_$11| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$11| |n#14_$1| Node.left)) (Node.Height |$Heap_$11| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$11| |n#14_$1| Node.right))))))))  :pattern ( (Node.Height |$Heap_$11| |n#14_$1|)))) :named ax_90))
   (assert (! (forall( (|$Heap_$12| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#14_$2| ref))(!(=> (or (and (Node.Valid |$Heap_$12| |n#14_$2|) (and (or (= null |n#14_$2|) (and (= (dtype |n#14_$2|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$12| |n#14_$2| alloc))) ($IsGoodHeap |$Heap_$12|))) (Node.Height@canCall |$Heap_$12| |n#14_$2|)) (= (Node.Height@2 |$Heap_$12| |n#14_$2|) (ite (= |n#14_$2| null) 0 (+ (Math.max |$Heap_$12| (Node.Height |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#14_$2| Node.left)) (Node.Height |$Heap_$12| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$12| |n#14_$2| Node.right))) 1))))  :pattern ( (Node.Height@2 |$Heap_$12| |n#14_$2|)))) :named ax_91))
   (assert (! (forall( (|$Heap_$13| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15| ref))(!(= (Node.Valid |$Heap_$13| |n#15|) (Node.Valid@2 |$Heap_$13| |n#15|))  :pattern ( (Node.Valid@2 |$Heap_$13| |n#15|)))) :named ax_92))
   (assert (! (forall( (|$Heap_$14| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15_$0| ref))(!(= (Node.Valid |$Heap_$14| |n#15_$0|) (Node.Valid@limited |$Heap_$14| |n#15_$0|))  :pattern ( (Node.Valid |$Heap_$14| |n#15_$0|)))) :named ax_93))
   (assert (! (forall( (|$Heap_$15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15_$1| ref))(!(=> (or (Node.Valid@canCall |$Heap_$15| |n#15_$1|) (and (or (= null |n#15_$1|) (and (= (dtype |n#15_$1|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$15| |n#15_$1| alloc))) ($IsGoodHeap |$Heap_$15|))) (and (= (Node.Valid |$Heap_$15| |n#15_$1|) (=> (not (= null |n#15_$1|)) (and (and (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ |n#15_$1|)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right) Node.Repr) Set@Empty$BoxType$))) (and (and (Node.Valid@limited |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right)) (and (Node.Valid@limited |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left)) (and (and (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left))) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))))) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr) ($Box$ref$ null))))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right))) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|))))))))) (=> (and (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left)))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right) Node.Repr))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$15| |n#15_$1| Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left))) (forall( (|i#16_$1| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left) Node.Contents) ($Box$Int$ |i#16_$1|)) (< |i#16_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$15| |n#15_$1| Node.value)))))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right))) (forall( (|i#17_$0| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right) Node.Contents) ($Box$Int$ |i#17_$0|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$15| |n#15_$1| Node.value) |i#17_$0|))))))) (=> (not (= null |n#15_$1|)) (=> (and (and (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left))) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left) Node.Repr) ($Box$ref$ |n#15_$1|)))))) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr) ($Box$ref$ |n#15_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr) ($Box$ref$ null))))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right))) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| |n#15_$1| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right) Node.Repr) ($Box$ref$ |n#15_$1|))))))) (and (=> (Node.Valid |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left)) (Node.Valid@canCall |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.right))) (Node.Valid@canCall |$Heap_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$15| |n#15_$1| Node.left)))))))  :pattern ( (Node.Valid |$Heap_$15| |n#15_$1|)))) :named ax_94))
   (assert (! (forall( (|$Heap_$16| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#15_$2| ref))(!(=> (or (Node.Valid@canCall |$Heap_$16| |n#15_$2|) (and (or (= null |n#15_$2|) (and (= (dtype |n#15_$2|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$16| |n#15_$2| alloc))) ($IsGoodHeap |$Heap_$16|))) (= (Node.Valid@2 |$Heap_$16| |n#15_$2|) (=> (not (= null |n#15_$2|)) (and (and (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| |n#15_$2| Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ |n#15_$2|)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right) Node.Repr) Set@Empty$BoxType$))) (and (and (Node.Valid |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right)) (and (Node.Valid |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left)) (and (and (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left))) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| |n#15_$2| Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| |n#15_$2| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left) Node.Repr) ($Box$ref$ |n#15_$2|)))))) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| |n#15_$2| Node.Repr) ($Box$ref$ |n#15_$2|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| |n#15_$2| Node.Repr) ($Box$ref$ null))))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right))) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| |n#15_$2| Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| |n#15_$2| Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right) Node.Repr) ($Box$ref$ |n#15_$2|))))))))) (=> (and (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right))) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left)))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right) Node.Repr))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| |n#15_$2| Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$16| |n#15_$2| Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left))) (forall( (|i#16_$2| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.left) Node.Contents) ($Box$Int$ |i#16_$2|)) (< |i#16_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$16| |n#15_$2| Node.value)))))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right))) (forall( (|i#17_$1| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$16| |n#15_$2| Node.right) Node.Contents) ($Box$Int$ |i#17_$1|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$16| |n#15_$2| Node.value) |i#17_$1|))))))))  :pattern ( (Node.Valid@2 |$Heap_$16| |n#15_$2|)))) :named ax_95))
   (assert (! (forall( (|$Heap_$17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44| Int) (|b#45| Int))(!(= (Math.max |$Heap_$17| |a#44| |b#45|) (Math.max@2 |$Heap_$17| |a#44| |b#45|))  :pattern ( (Math.max@2 |$Heap_$17| |a#44| |b#45|)))) :named ax_96))
   (assert (! (forall( (|$Heap_$18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44_$0| Int) (|b#45_$0| Int))(!(= (Math.max |$Heap_$18| |a#44_$0| |b#45_$0|) (Math.max@limited |$Heap_$18| |a#44_$0| |b#45_$0|))  :pattern ( (Math.max |$Heap_$18| |a#44_$0| |b#45_$0|)))) :named ax_97))
   (assert (! (forall( (|$Heap_$19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44_$1| Int) (|b#45_$1| Int))(!(=> (or (Math.max@canCall |$Heap_$19| |a#44_$1| |b#45_$1|) (and (<= 0 |b#45_$1|) (and (<= 0 |a#44_$1|) ($IsGoodHeap |$Heap_$19|)))) (and (<= 0 (Math.max |$Heap_$19| |a#44_$1| |b#45_$1|)) (and (<= |b#45_$1| (Math.max@limited |$Heap_$19| |a#44_$1| |b#45_$1|)) (and (<= |a#44_$1| (Math.max@limited |$Heap_$19| |a#44_$1| |b#45_$1|)) (and (= (Math.max |$Heap_$19| |a#44_$1| |b#45_$1|) (ite (< |a#44_$1| |b#45_$1|) |b#45_$1| |a#44_$1|)) (=> (= |b#45_$1| |a#44_$1|) (and (= (Math.max@limited |$Heap_$19| |a#44_$1| |b#45_$1|) |a#44_$1|) (= |b#45_$1| |a#44_$1|))))))))  :pattern ( (Math.max |$Heap_$19| |a#44_$1| |b#45_$1|)))) :named ax_98))
   (assert (! (forall( (|$Heap_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12_$0| ref))(!(= (Node.Balanced |$Heap_$2| |n#12_$0|) (Node.Balanced@limited |$Heap_$2| |n#12_$0|))  :pattern ( (Node.Balanced |$Heap_$2| |n#12_$0|)))) :named ax_99))
   (assert (! (forall( (|$Heap_$20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a#44_$2| Int) (|b#45_$2| Int))(!(=> (or (Math.max@canCall |$Heap_$20| |a#44_$2| |b#45_$2|) (and (<= 0 |b#45_$2|) (and (<= 0 |a#44_$2|) ($IsGoodHeap |$Heap_$20|)))) (= (Math.max@2 |$Heap_$20| |a#44_$2| |b#45_$2|) (ite (< |a#44_$2| |b#45_$2|) |b#45_$2| |a#44_$2|)))  :pattern ( (Math.max@2 |$Heap_$20| |a#44_$2| |b#45_$2|)))) :named ax_100))
   (assert (! (forall( (|$Heap_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12_$1| ref))(!(=> (or (Node.Balanced@canCall |$Heap_$3| |n#12_$1|) (and (and (Node.Valid |$Heap_$3| |n#12_$1|) (and (or (= null |n#12_$1|) (and (= (dtype |n#12_$1|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$3| |n#12_$1| alloc))) ($IsGoodHeap |$Heap_$3|))) (Node.BalanceValid |$Heap_$3| |n#12_$1|))) (and (= (Node.Balanced |$Heap_$3| |n#12_$1|) (=> (not (= null |n#12_$1|)) (and (and (Node.Balanced@limited |$Heap_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$3| |n#12_$1| Node.right)) (or (= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance)) (or (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance)) (= (- 0 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance))))) (Node.Balanced@limited |$Heap_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$3| |n#12_$1| Node.left))))) (=> (not (= null |n#12_$1|)) (and (=> (and (Node.Balanced |$Heap_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$3| |n#12_$1| Node.right)) (or (= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance)) (or (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance)) (= (- 0 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance))))) (Node.Balanced@canCall |$Heap_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$3| |n#12_$1| Node.left))) (=> (or (= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance)) (or (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance)) (= (- 0 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$3| |n#12_$1| Node.balance)))) (Node.Balanced@canCall |$Heap_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$3| |n#12_$1| Node.right)))))))  :pattern ( (Node.Balanced |$Heap_$3| |n#12_$1|)))) :named ax_101))
   (assert (! (forall( (|$Heap_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#12_$2| ref))(!(=> (or (Node.Balanced@canCall |$Heap_$4| |n#12_$2|) (and (and (Node.Valid |$Heap_$4| |n#12_$2|) (and (or (= null |n#12_$2|) (and (= (dtype |n#12_$2|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$4| |n#12_$2| alloc))) ($IsGoodHeap |$Heap_$4|))) (Node.BalanceValid |$Heap_$4| |n#12_$2|))) (= (Node.Balanced@2 |$Heap_$4| |n#12_$2|) (=> (not (= null |n#12_$2|)) (and (and (Node.Balanced |$Heap_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$4| |n#12_$2| Node.right)) (or (= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$4| |n#12_$2| Node.balance)) (or (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$4| |n#12_$2| Node.balance)) (= (- 0 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$4| |n#12_$2| Node.balance))))) (Node.Balanced |$Heap_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$4| |n#12_$2| Node.left))))))  :pattern ( (Node.Balanced@2 |$Heap_$4| |n#12_$2|)))) :named ax_102))
   (assert (! (forall( (|$Heap_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13| ref))(!(= (Node.BalanceValid |$Heap_$5| |n#13|) (Node.BalanceValid@2 |$Heap_$5| |n#13|))  :pattern ( (Node.BalanceValid@2 |$Heap_$5| |n#13|)))) :named ax_103))
   (assert (! (forall( (|$Heap_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13_$0| ref))(!(= (Node.BalanceValid |$Heap_$6| |n#13_$0|) (Node.BalanceValid@limited |$Heap_$6| |n#13_$0|))  :pattern ( (Node.BalanceValid |$Heap_$6| |n#13_$0|)))) :named ax_104))
   (assert (! (forall( (|$Heap_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13_$1| ref))(!(=> (or (and (Node.Valid |$Heap_$7| |n#13_$1|) (and (or (= null |n#13_$1|) (and (= (dtype |n#13_$1|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$7| |n#13_$1| alloc))) ($IsGoodHeap |$Heap_$7|))) (Node.BalanceValid@canCall |$Heap_$7| |n#13_$1|)) (and (= (Node.BalanceValid |$Heap_$7| |n#13_$1|) (=> (not (= null |n#13_$1|)) (and (and (= (- (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right)) (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$7| |n#13_$1| Node.balance)) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left))) (Node.BalanceValid@limited |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left)))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right))) (Node.BalanceValid@limited |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right)))))) (=> (not (= null |n#13_$1|)) (and (and (and (Node.Height@canCall |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right)) (Node.Height@canCall |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left))) (=> (= (- (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right)) (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$7| |n#13_$1| Node.balance)) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left))) (Node.BalanceValid@canCall |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left))))) (=> (and (= (- (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right)) (Node.Height |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$7| |n#13_$1| Node.balance)) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left))) (Node.BalanceValid |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.left)))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right))) (Node.BalanceValid@canCall |$Heap_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$7| |n#13_$1| Node.right))))))))  :pattern ( (Node.BalanceValid |$Heap_$7| |n#13_$1|)))) :named ax_105))
   (assert (! (forall( (|$Heap_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#13_$2| ref))(!(=> (or (and (Node.Valid |$Heap_$8| |n#13_$2|) (and (or (= null |n#13_$2|) (and (= (dtype |n#13_$2|) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$8| |n#13_$2| alloc))) ($IsGoodHeap |$Heap_$8|))) (Node.BalanceValid@canCall |$Heap_$8| |n#13_$2|)) (= (Node.BalanceValid@2 |$Heap_$8| |n#13_$2|) (=> (not (= null |n#13_$2|)) (and (and (= (- (Node.Height |$Heap_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.right)) (Node.Height |$Heap_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.left))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |$Heap_$8| |n#13_$2| Node.balance)) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.left))) (Node.BalanceValid |$Heap_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.left)))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.right))) (Node.BalanceValid |$Heap_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |$Heap_$8| |n#13_$2| Node.right)))))))  :pattern ( (Node.BalanceValid@2 |$Heap_$8| |n#13_$2|)))) :named ax_106))
   (assert (! (forall( (|$Heap_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|n#14| ref))(!(= (Node.Height |$Heap_$9| |n#14|) (Node.Height@2 |$Heap_$9| |n#14|))  :pattern ( (Node.Height@2 |$Heap_$9| |n#14|)))) :named ax_107))
   (assert (! (forall( (|$o_$23_$0| ref) (|$f_$18_$0| Field$Bool$) (|Node.Repr_$1_$0| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$0| ref) (|$Heap_$29_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$0| Field$Bool$) (|t#6_$1_$0| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@8 |Node.Repr_$1_$0| |null_$8_$0| |$Heap_$29_$0| |alloc_$8_$0| |t#6_$1_$0|) |$o_$23_$0| |$f_$18_$0|) (=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$29_$0| |$o_$23_$0| |alloc_$8_$0|) (not (= |null_$8_$0| |$o_$23_$0|))) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$29_$0| |t#6_$1_$0| |Node.Repr_$1_$0|) ($Box$ref$ |$o_$23_$0|)) (not (= |t#6_$1_$0| |null_$8_$0|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ (lambda@8 |Node.Repr_$1_$0| |null_$8_$0| |$Heap_$29_$0| |alloc_$8_$0| |t#6_$1_$0|) |$o_$23_$0| |$f_$18_$0|)))) :named ax_108))
   (assert (! (forall( (|$o_$23_$1| ref) (|$f_$18_$1| Field$Int$) (|Node.Repr_$1_$1| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$1| ref) (|$Heap_$29_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$1| Field$Bool$) (|t#6_$1_$1| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ (lambda@8 |Node.Repr_$1_$1| |null_$8_$1| |$Heap_$29_$1| |alloc_$8_$1| |t#6_$1_$1|) |$o_$23_$1| |$f_$18_$1|) (=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$29_$1| |$o_$23_$1| |alloc_$8_$1|) (not (= |null_$8_$1| |$o_$23_$1|))) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$29_$1| |t#6_$1_$1| |Node.Repr_$1_$1|) ($Box$ref$ |$o_$23_$1|)) (not (= |t#6_$1_$1| |null_$8_$1|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ (lambda@8 |Node.Repr_$1_$1| |null_$8_$1| |$Heap_$29_$1| |alloc_$8_$1| |t#6_$1_$1|) |$o_$23_$1| |$f_$18_$1|)))) :named ax_109))
   (assert (! (forall( (|$o_$23_$2| ref) (|$f_$18_$2| Field$ref$) (|Node.Repr_$1_$2| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$2| ref) (|$Heap_$29_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$2| Field$Bool$) (|t#6_$1_$2| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ (lambda@8 |Node.Repr_$1_$2| |null_$8_$2| |$Heap_$29_$2| |alloc_$8_$2| |t#6_$1_$2|) |$o_$23_$2| |$f_$18_$2|) (=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$29_$2| |$o_$23_$2| |alloc_$8_$2|) (not (= |null_$8_$2| |$o_$23_$2|))) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$29_$2| |t#6_$1_$2| |Node.Repr_$1_$2|) ($Box$ref$ |$o_$23_$2|)) (not (= |t#6_$1_$2| |null_$8_$2|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ (lambda@8 |Node.Repr_$1_$2| |null_$8_$2| |$Heap_$29_$2| |alloc_$8_$2| |t#6_$1_$2|) |$o_$23_$2| |$f_$18_$2|)))) :named ax_110))
   (assert (! (forall( (|$o_$23_$3| ref) (|$f_$18_$3| Field$BoxType$) (|Node.Repr_$1_$3| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$3| ref) (|$Heap_$29_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$3| Field$Bool$) (|t#6_$1_$3| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@8 |Node.Repr_$1_$3| |null_$8_$3| |$Heap_$29_$3| |alloc_$8_$3| |t#6_$1_$3|) |$o_$23_$3| |$f_$18_$3|) (=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$29_$3| |$o_$23_$3| |alloc_$8_$3|) (not (= |null_$8_$3| |$o_$23_$3|))) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$29_$3| |t#6_$1_$3| |Node.Repr_$1_$3|) ($Box$ref$ |$o_$23_$3|)) (not (= |t#6_$1_$3| |null_$8_$3|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ (lambda@8 |Node.Repr_$1_$3| |null_$8_$3| |$Heap_$29_$3| |alloc_$8_$3| |t#6_$1_$3|) |$o_$23_$3| |$f_$18_$3|)))) :named ax_111))
   (assert (! (forall( (|$o_$23_$4| ref) (|$f_$18_$4| Field$$@Map@@BoxType@To@Bool@@$) (|Node.Repr_$1_$4| Field$$@Map@@BoxType@To@Bool@@$) (|null_$8_$4| ref) (|$Heap_$29_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|alloc_$8_$4| Field$Bool$) (|t#6_$1_$4| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ (lambda@8 |Node.Repr_$1_$4| |null_$8_$4| |$Heap_$29_$4| |alloc_$8_$4| |t#6_$1_$4|) |$o_$23_$4| |$f_$18_$4|) (=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |$Heap_$29_$4| |$o_$23_$4| |alloc_$8_$4|) (not (= |null_$8_$4| |$o_$23_$4|))) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |$Heap_$29_$4| |t#6_$1_$4| |Node.Repr_$1_$4|) ($Box$ref$ |$o_$23_$4|)) (not (= |t#6_$1_$4| |null_$8_$4|)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ (lambda@8 |Node.Repr_$1_$4| |null_$8_$4| |$Heap_$29_$4| |alloc_$8_$4| |t#6_$1_$4|) |$o_$23_$4| |$f_$18_$4|)))) :named ax_112))
   (assert (! (forall( (|a_$0_$0| $@Map@@BoxType@To@Bool@@) (|x_$0_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$0_$0| |x_$0_$0|) |x_$0_$0|)  :pattern ( (Set@UnionOne$BoxType$ |a_$0_$0| |x_$0_$0|)))) :named ax_113))
   (assert (! (forall( (|a_$1_$0| $@Map@@BoxType@To@Bool@@) (|x_$1_$0| BoxType) (|y_$8| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$8|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$1_$0| |x_$1_$0|) |y_$8|))  :pattern ( (Set@UnionOne$BoxType$ |a_$1_$0| |x_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$1_$0| |y_$8|)))) :named ax_114))
   (assert (! (forall( (|a_$10_$0| $@Map@@BoxType@To@Bool@@) (|b_$7_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ |a_$10_$0| (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|)) (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|))  :pattern ( (Set@Intersection$BoxType$ |a_$10_$0| (Set@Intersection$BoxType$ |a_$10_$0| |b_$7_$0|))))) :named ax_115))
   (assert (! (forall( (|a_$11_$0| $@Map@@BoxType@To@Bool@@) (|b_$8_$0| $@Map@@BoxType@To@Bool@@) (|o_$4_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$11_$0| |b_$8_$0|) |o_$4_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$11_$0| |o_$4_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$8_$0| |o_$4_$0|))))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$11_$0| |b_$8_$0|) |o_$4_$0|)))) :named ax_116))
   (assert (! (forall( (|a_$12_$0| $@Map@@BoxType@To@Bool@@) (|b_$9_$0| $@Map@@BoxType@To@Bool@@) (|y_$2_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |y_$2_$0|) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Difference$BoxType$ |a_$12_$0| |b_$9_$0|) |y_$2_$0|)))  :pattern ( (Set@Difference$BoxType$ |a_$12_$0| |b_$9_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$9_$0| |y_$2_$0|)))) :named ax_117))
   (assert (! (forall( (|a_$13_$0| $@Map@@BoxType@To@Bool@@) (|b_$10_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Subset$BoxType$ |a_$13_$0| |b_$10_$0|) (forall( (|o_$5_$1| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$13_$0| |o_$5_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$10_$0| |o_$5_$1|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$13_$0| |o_$5_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$10_$0| |o_$5_$1|)))))  :pattern ( (Set@Subset$BoxType$ |a_$13_$0| |b_$10_$0|)))) :named ax_118))
   (assert (! (forall( (|a_$14_$0| $@Map@@BoxType@To@Bool@@) (|b_$11_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Equal$BoxType$ |a_$14_$0| |b_$11_$0|) (forall( (|o_$6_$1| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$11_$0| |o_$6_$1|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$6_$1|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$14_$0| |o_$6_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$11_$0| |o_$6_$1|)))))  :pattern ( (Set@Equal$BoxType$ |a_$14_$0| |b_$11_$0|)))) :named ax_119))
   (assert (! (forall( (|a_$15_$0| $@Map@@BoxType@To@Bool@@) (|b_$12_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Equal$BoxType$ |a_$15_$0| |b_$12_$0|) (= |b_$12_$0| |a_$15_$0|))  :pattern ( (Set@Equal$BoxType$ |a_$15_$0| |b_$12_$0|)))) :named ax_120))
   (assert (! (forall( (|a_$16_$0| $@Map@@BoxType@To@Bool@@) (|b_$13_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Disjoint$BoxType$ |a_$16_$0| |b_$13_$0|) (forall( (|o_$7_$1| BoxType))(!(or (not (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$7_$1|)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$16_$0| |o_$7_$1|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$16_$0| |o_$7_$1|)) :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$13_$0| |o_$7_$1|)))))  :pattern ( (Set@Disjoint$BoxType$ |a_$16_$0| |b_$13_$0|)))) :named ax_121))
   (assert (! (forall( (|a_$17_$0| $@Map@@BoxType@To@Bool@@) (|tick_$0| TickType))(!(=> (not (= |a_$17_$0| Set@Empty$BoxType$)) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$17_$0| (Set@Choose$BoxType$ |a_$17_$0| |tick_$0|)))  :pattern ( (Set@Choose$BoxType$ |a_$17_$0| |tick_$0|)))) :named ax_122))
   (assert (! (forall( (|a_$18| Int) (|b_$14| Int))(!(= (= (Math@min |a_$18| |b_$14|) |a_$18|) (<= |a_$18| |b_$14|))  :pattern ( (Math@min |a_$18| |b_$14|)))) :named ax_123))
   (assert (! (forall( (|a_$19| Int) (|b_$15| Int))(!(= (= (Math@min |a_$19| |b_$15|) |b_$15|) (<= |b_$15| |a_$19|))  :pattern ( (Math@min |a_$19| |b_$15|)))) :named ax_124))
   (assert (! (forall( (|a_$2_$0| $@Map@@BoxType@To@Bool@@) (|b_$43| $@Map@@BoxType@To@Bool@@) (|o_$2_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$2_$0| |b_$43|) |o_$2_$0|) (or (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$43| |o_$2_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$2_$0| |o_$2_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$2_$0| |b_$43|) |o_$2_$0|)))) :named ax_125))
   (assert (! (forall( (|a_$20| Int) (|b_$16| Int))(!(or (= (Math@min |a_$20| |b_$16|) |b_$16|) (= (Math@min |a_$20| |b_$16|) |a_$20|))  :pattern ( (Math@min |a_$20| |b_$16|)))) :named ax_126))
   (assert (! (forall( (|a_$21| Int))(!(=> (<= 0 |a_$21|) (= (Math@clip |a_$21|) |a_$21|))  :pattern ( (Math@clip |a_$21|)))) :named ax_127))
   (assert (! (forall( (|a_$22| Int))(!(=> (< |a_$22| 0) (= (Math@clip |a_$22|) 0))  :pattern ( (Math@clip |a_$22|)))) :named ax_128))
   (assert (! (forall( (|a_$3_$0| $@Map@@BoxType@To@Bool@@) (|b_$0_$0| $@Map@@BoxType@To@Bool@@) (|y_$0_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |y_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$3_$0| |b_$0_$0|) |y_$0_$0|))  :pattern ( (Set@Union$BoxType$ |a_$3_$0| |b_$0_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$3_$0| |y_$0_$0|)))) :named ax_129))
   (assert (! (forall( (|a_$4_$0| $@Map@@BoxType@To@Bool@@) (|b_$1_$0| $@Map@@BoxType@To@Bool@@) (|y_$1_$0| BoxType))(!(=> (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Union$BoxType$ |a_$4_$0| |b_$1_$0|) |y_$1_$0|))  :pattern ( (Set@Union$BoxType$ |a_$4_$0| |b_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$1_$0| |y_$1_$0|)))) :named ax_130))
   (assert (! (forall( (|a_$41_$0| Seq$ref$) (|b_$30_$0| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$41_$0| |b_$30_$0|) (= |b_$30_$0| |a_$41_$0|))  :pattern ( (Seq@Equal$ref$ |a_$41_$0| |b_$30_$0|)))) :named ax_131))
   (assert (! (forall( (|a_$41_$1| Seq$BoxType$) (|b_$30_$1| Seq$BoxType$))(!(=> (Seq@Equal$BoxType$ |a_$41_$1| |b_$30_$1|) (= |b_$30_$1| |a_$41_$1|))  :pattern ( (Seq@Equal$BoxType$ |a_$41_$1| |b_$30_$1|)))) :named ax_132))
   (assert (! (forall( (|a_$44| ClassName) (|b_$37| ClassName))(!(and (= (TypeTupleCdr (TypeTuple |a_$44| |b_$37|)) |b_$37|) (= (TypeTupleCar (TypeTuple |a_$44| |b_$37|)) |a_$44|))  :pattern ( (TypeTuple |a_$44| |b_$37|)))) :named ax_133))
   (assert (! (forall( (|a_$45| $@Map@@BoxType@To@Bool@@) (|x_$16| BoxType) (|o_$1_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$45| |x_$16|) |o_$1_$0|) (or (= |x_$16| |o_$1_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$45| |o_$1_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@UnionOne$BoxType$ |a_$45| |x_$16|) |o_$1_$0|)))) :named ax_134))
   (assert (! (forall( (|a_$5_$0| $@Map@@BoxType@To@Bool@@) (|b_$2_$0| $@Map@@BoxType@To@Bool@@))(!(=> (Set@Disjoint$BoxType$ |a_$5_$0| |b_$2_$0|) (and (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|) |b_$2_$0|) |a_$5_$0|) (= (Set@Difference$BoxType$ (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|) |a_$5_$0|) |b_$2_$0|)))  :pattern ( (Set@Union$BoxType$ |a_$5_$0| |b_$2_$0|)))) :named ax_135))
   (assert (! (forall( (|a_$6_$0| $@Map@@BoxType@To@Bool@@) (|b_$3_$0| $@Map@@BoxType@To@Bool@@) (|o_$3_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$6_$0| |b_$3_$0|) |o_$3_$0|) (and (MapRead$$@Map@@BoxType@To@Bool@@$ |b_$3_$0| |o_$3_$0|) (MapRead$$@Map@@BoxType@To@Bool@@$ |a_$6_$0| |o_$3_$0|)))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Intersection$BoxType$ |a_$6_$0| |b_$3_$0|) |o_$3_$0|)))) :named ax_136))
   (assert (! (forall( (|a_$7_$0| $@Map@@BoxType@To@Bool@@) (|b_$4_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|) |b_$4_$0|) (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|))  :pattern ( (Set@Union$BoxType$ (Set@Union$BoxType$ |a_$7_$0| |b_$4_$0|) |b_$4_$0|)))) :named ax_137))
   (assert (! (forall( (|a_$8_$0| $@Map@@BoxType@To@Bool@@) (|b_$5_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Union$BoxType$ |a_$8_$0| (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|)) (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|))  :pattern ( (Set@Union$BoxType$ |a_$8_$0| (Set@Union$BoxType$ |a_$8_$0| |b_$5_$0|))))) :named ax_138))
   (assert (! (forall( (|a_$9_$0| $@Map@@BoxType@To@Bool@@) (|b_$6_$0| $@Map@@BoxType@To@Bool@@))(!(= (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|) |b_$6_$0|) (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|))  :pattern ( (Set@Intersection$BoxType$ (Set@Intersection$BoxType$ |a_$9_$0| |b_$6_$0|) |b_$6_$0|)))) :named ax_139))
   (assert (! (forall( (|b_$31| BoxType))(!(= |b_$31| ($Box$Int$ ($Unbox$Int$ |b_$31|)))  :pattern ( ($Unbox$Int$ |b_$31|)))) :named ax_140))
   (assert (! (forall( (|b_$32| BoxType))(!(= |b_$32| ($Box$ref$ ($Unbox$ref$ |b_$32|)))  :pattern ( ($Unbox$ref$ |b_$32|)))) :named ax_141))
   (assert (! (forall( (|b_$33| BoxType))(!(= |b_$33| ($Box$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$33|)))  :pattern ( ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$33|)))) :named ax_142))
   (assert (! (forall( (|b_$34| BoxType))(!(= |b_$34| ($Box$Seq$BoxType$$ ($Unbox$Seq$BoxType$$ |b_$34|)))  :pattern ( ($Unbox$Seq$BoxType$$ |b_$34|)))) :named ax_143))
   (assert (! (forall( (|b_$35| BoxType))(!(= |b_$35| ($Box$DatatypeType$ ($Unbox$DatatypeType$ |b_$35|)))  :pattern ( ($Unbox$DatatypeType$ |b_$35|)))) :named ax_144))
   (assert (! (forall( (|b_$36| BoxType))(!(=> ($IsCanonicalBoolBox |b_$36|) (= |b_$36| ($Box$Bool$ ($Unbox$Bool$ |b_$36|))))  :pattern ( ($Unbox$Bool$ |b_$36|)))) :named ax_145))
   (assert (! (forall( (|b_$38| BoxType) (|h_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$38| |h_$3|) (or (= null ($Unbox$ref$ |b_$38|)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$3| ($Unbox$ref$ |b_$38|) alloc)))  :pattern ( (GenericAlloc |b_$38| |h_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$3| ($Unbox$ref$ |b_$38|) alloc)))) :named ax_146))
   (assert (! (forall( (|b_$39| BoxType) (|h_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|i_$12| Int))(!(=> (and (< |i_$12| (Seq@Length$BoxType$ ($Unbox$Seq$BoxType$$ |b_$39|))) (and (GenericAlloc |b_$39| |h_$4|) (<= 0 |i_$12|))) (GenericAlloc (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$39|) |i_$12|) |h_$4|))  :pattern ( (GenericAlloc |b_$39| |h_$4|) (Seq@Index$BoxType$ ($Unbox$Seq$BoxType$$ |b_$39|) |i_$12|)))) :named ax_147))
   (assert (! (forall( (|b_$40| BoxType) (|h_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|t_$2| BoxType))(!(=> (and (GenericAlloc |b_$40| |h_$5|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$40|) |t_$2|)) (GenericAlloc |t_$2| |h_$5|))  :pattern ( (GenericAlloc |b_$40| |h_$5|) (MapRead$$@Map@@BoxType@To@Bool@@$ ($Unbox$$@Map@@BoxType@To@Bool@@$ |b_$40|) |t_$2|)))) :named ax_148))
   (assert (! (forall( (|b_$41| BoxType) (|h_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (GenericAlloc |b_$41| |h_$6|) (DtAlloc ($Unbox$DatatypeType$ |b_$41|) |h_$6|))  :pattern ( (GenericAlloc |b_$41| |h_$6|) (DtType ($Unbox$DatatypeType$ |b_$41|))))) :named ax_149))
   (assert (! (forall( (|b_$42| Bool) (|h_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$7|) (GenericAlloc ($Box$Bool$ |b_$42|) |h_$7|))) :named ax_150))
   (assert (! (forall( (|f_$1| Field$BoxType$) (|i_$10| Int))(!(= (FDim$BoxType$ (MultiIndexField |f_$1| |i_$10|)) (+ (FDim$BoxType$ |f_$1|) 1))  :pattern ( (MultiIndexField |f_$1| |i_$10|)))) :named ax_151))
   (assert (! (forall( (|f_$2| Field$BoxType$) (|i_$11| Int))(!(and (= (MultiIndexField_Inverse1$BoxType$ (MultiIndexField |f_$2| |i_$11|)) |i_$11|) (= (MultiIndexField_Inverse0$BoxType$ (MultiIndexField |f_$2| |i_$11|)) |f_$2|))  :pattern ( (MultiIndexField |f_$2| |i_$11|)))) :named ax_152))
   (assert (! (forall( (|f_$4| Field$Bool$) (|r_$7| ref) (|H_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$7| |f_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$1| |r_$7| |f_$4|))) :named ax_153))
   (assert (! (forall( (|f_$5| Field$Int$) (|r_$8| ref) (|H_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |H_$2| |r_$8| |f_$5|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |H_$2| |r_$8| |f_$5|))) :named ax_154))
   (assert (! (forall( (|f_$6| Field$ref$) (|r_$9| ref) (|H_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$3| |r_$9| |f_$6|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$3| |r_$9| |f_$6|))) :named ax_155))
   (assert (! (forall( (|f_$7| Field$BoxType$) (|r_$10| ref) (|H_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$4| |r_$10| |f_$7|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$4| |r_$10| |f_$7|))) :named ax_156))
   (assert (! (forall( (|f_$8| Field$$@Map@@BoxType@To@Bool@@$) (|r_$11| ref) (|H_$5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$5| |r_$11| |f_$8|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$5| |r_$11| |f_$8|))) :named ax_157))
   (assert (! (forall( (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a_$43| ref) (|i_$7| Int))(=> (and (< |i_$7| (Seq@Length$BoxType$ (Seq@FromArray |h_$0| |a_$43|))) (<= 0 |i_$7|)) (= (Seq@Index$BoxType$ (Seq@FromArray |h_$0| |a_$43|) |i_$7|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$0| |a_$43| (IndexField |i_$7|))))) :named ax_158))
   (assert (! (forall( (|h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d| DatatypeType))(!(=> ($HeapSucc |h_$1| |k|) (=> (DtAlloc |d| |h_$1|) (DtAlloc |d| |k|)))  :pattern ( ($HeapSucc |h_$1| |k|) (DtAlloc |d| |h_$1|)) :pattern ( ($HeapSucc |h_$1| |k|) (DtAlloc |d| |k|)))) :named ax_159))
   (assert (! (forall( (|h_$10_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$0| ref) (|f_$3_$0| Field$Bool$) (|x_$15_$0| Bool))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$10_$0| |r_$6_$0| |f_$3_$0| |x_$15_$0|)) ($HeapSucc |h_$10_$0| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$10_$0| |r_$6_$0| |f_$3_$0| |x_$15_$0|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$10_$0| |r_$6_$0| |f_$3_$0| |x_$15_$0|)))) :named ax_160))
   (assert (! (forall( (|h_$10_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$1| ref) (|f_$3_$1| Field$Int$) (|x_$15_$1| Int))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$10_$1| |r_$6_$1| |f_$3_$1| |x_$15_$1|)) ($HeapSucc |h_$10_$1| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$10_$1| |r_$6_$1| |f_$3_$1| |x_$15_$1|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$10_$1| |r_$6_$1| |f_$3_$1| |x_$15_$1|)))) :named ax_161))
   (assert (! (forall( (|h_$10_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$2| ref) (|f_$3_$2| Field$ref$) (|x_$15_$2| ref))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$10_$2| |r_$6_$2| |f_$3_$2| |x_$15_$2|)) ($HeapSucc |h_$10_$2| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$10_$2| |r_$6_$2| |f_$3_$2| |x_$15_$2|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$10_$2| |r_$6_$2| |f_$3_$2| |x_$15_$2|)))) :named ax_162))
   (assert (! (forall( (|h_$10_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$3| ref) (|f_$3_$3| Field$BoxType$) (|x_$15_$3| BoxType))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$10_$3| |r_$6_$3| |f_$3_$3| |x_$15_$3|)) ($HeapSucc |h_$10_$3| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$10_$3| |r_$6_$3| |f_$3_$3| |x_$15_$3|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |h_$10_$3| |r_$6_$3| |f_$3_$3| |x_$15_$3|)))) :named ax_163))
   (assert (! (forall( (|h_$10_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|r_$6_$4| ref) (|f_$3_$4| Field$$@Map@@BoxType@To@Bool@@$) (|x_$15_$4| $@Map@@BoxType@To@Bool@@))(!(=> ($IsGoodHeap (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |h_$10_$4| |r_$6_$4| |f_$3_$4| |x_$15_$4|)) ($HeapSucc |h_$10_$4| (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |h_$10_$4| |r_$6_$4| |f_$3_$4| |x_$15_$4|)))  :pattern ( (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |h_$10_$4| |r_$6_$4| |f_$3_$4| |x_$15_$4|)))) :named ax_164))
   (assert (! (forall( (|h_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> ($HeapSucc |h_$11| |k_$1|) (forall( (|o_$19| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$11| |o_$19| alloc) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$19| alloc))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |k_$1| |o_$19| alloc)))))  :pattern ( ($HeapSucc |h_$11| |k_$1|)))) :named ax_165))
   (assert (! (forall( (|h_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|k_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|d_$0| BoxType))(!(=> ($HeapSucc |h_$2| |k_$0|) (=> (GenericAlloc |d_$0| |h_$2|) (GenericAlloc |d_$0| |k_$0|)))  :pattern ( ($HeapSucc |h_$2| |k_$0|) (GenericAlloc |d_$0| |h_$2|)) :pattern ( ($HeapSucc |h_$2| |k_$0|) (GenericAlloc |d_$0| |k_$0|)))) :named ax_166))
   (assert (! (forall( (|h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|a_$42| ref))(!(= (Seq@Length$BoxType$ (Seq@FromArray |h| |a_$42|)) (array.Length |a_$42|))  :pattern ( (Seq@Length$BoxType$ (Seq@FromArray |h| |a_$42|))))) :named ax_167))
   (assert (! (forall( (|i_$4_$0| Int) (|v_$4_$0| ref) (|len_$1_$0| Int) (|x_$9_$0| ref))(!(=> (and (< |i_$4_$0| |len_$1_$0|) (<= 0 |i_$4_$0|)) (= (= |x_$9_$0| |v_$4_$0|) (Seq@Contains$ref$ (Seq@Build$ref$ Seq@Empty$ref$ |i_$4_$0| |v_$4_$0| |len_$1_$0|) |x_$9_$0|)))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ Seq@Empty$ref$ |i_$4_$0| |v_$4_$0| |len_$1_$0|) |x_$9_$0|)))) :named ax_168))
   (assert (! (forall( (|i_$4_$1| Int) (|v_$4_$1| BoxType) (|len_$1_$1| Int) (|x_$9_$1| BoxType))(!(=> (and (< |i_$4_$1| |len_$1_$1|) (<= 0 |i_$4_$1|)) (= (= |x_$9_$1| |v_$4_$1|) (Seq@Contains$BoxType$ (Seq@Build$BoxType$ Seq@Empty$BoxType$ |i_$4_$1| |v_$4_$1| |len_$1_$1|) |x_$9_$1|)))  :pattern ( (Seq@Contains$BoxType$ (Seq@Build$BoxType$ Seq@Empty$BoxType$ |i_$4_$1| |v_$4_$1| |len_$1_$1|) |x_$9_$1|)))) :named ax_169))
   (assert (! (forall( (|i_$8| Int))(!(= (FDim$BoxType$ (IndexField |i_$8|)) 1)  :pattern ( (IndexField |i_$8|)))) :named ax_170))
   (assert (! (forall( (|o_$18| ref))(<= 0 (array.Length |o_$18|))) :named ax_171))
   (assert (! (forall( (|o_$20| BoxType))(!(not (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$20|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ Set@Empty$BoxType$ |o_$20|)))) :named ax_172))
   (assert (! (forall( (|r_$1_$0| BoxType))(!(MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$1_$0|) |r_$1_$0|)  :pattern ( (Set@Singleton$BoxType$ |r_$1_$0|)))) :named ax_173))
   (assert (! (forall( (|r_$2_$0| BoxType) (|o_$0_$0| BoxType))(!(= (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|) (= |r_$2_$0| |o_$0_$0|))  :pattern ( (MapRead$$@Map@@BoxType@To@Bool@@$ (Set@Singleton$BoxType$ |r_$2_$0|) |o_$0_$0|)))) :named ax_174))
   (assert (! (forall( (|r_$5| ref) (|h_$9| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (and (or (= |r_$5| null) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$9| |r_$5| alloc)) ($IsGoodHeap |h_$9|)) (GenericAlloc ($Box$ref$ |r_$5|) |h_$9|))  :pattern ( (GenericAlloc ($Box$ref$ |r_$5|) |h_$9|)))) :named ax_175))
   (assert (! (forall( (|s_$0_$0| Seq$ref$))(!(<= 0 (Seq@Length$ref$ |s_$0_$0|))  :pattern ( (Seq@Length$ref$ |s_$0_$0|)))) :named ax_176))
   (assert (! (forall( (|s_$0_$1| Seq$BoxType$))(!(<= 0 (Seq@Length$BoxType$ |s_$0_$1|))  :pattern ( (Seq@Length$BoxType$ |s_$0_$1|)))) :named ax_177))
   (assert (! (forall( (|s_$1_$0| Seq$ref$))(!(=> (= (Seq@Length$ref$ |s_$1_$0|) 0) (= |s_$1_$0| Seq@Empty$ref$))  :pattern ( (Seq@Length$ref$ |s_$1_$0|)))) :named ax_178))
   (assert (! (forall( (|s_$1_$1| Seq$BoxType$))(!(=> (= (Seq@Length$BoxType$ |s_$1_$1|) 0) (= |s_$1_$1| Seq@Empty$BoxType$))  :pattern ( (Seq@Length$BoxType$ |s_$1_$1|)))) :named ax_179))
   (assert (! (forall( (|s_$10_$0| Seq$ref$) (|n_$5_$0| Int))(!(=> (<= 0 |n_$5_$0|) (and (=> (< (Seq@Length$ref$ |s_$10_$0|) |n_$5_$0|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$10_$0| |n_$5_$0|)) (Seq@Length$ref$ |s_$10_$0|))) (=> (<= |n_$5_$0| (Seq@Length$ref$ |s_$10_$0|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$10_$0| |n_$5_$0|)) |n_$5_$0|))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$10_$0| |n_$5_$0|))))) :named ax_180))
   (assert (! (forall( (|s_$10_$1| Seq$BoxType$) (|n_$5_$1| Int))(!(=> (<= 0 |n_$5_$1|) (and (=> (< (Seq@Length$BoxType$ |s_$10_$1|) |n_$5_$1|) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$10_$1| |n_$5_$1|)) (Seq@Length$BoxType$ |s_$10_$1|))) (=> (<= |n_$5_$1| (Seq@Length$BoxType$ |s_$10_$1|)) (= (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$10_$1| |n_$5_$1|)) |n_$5_$1|))))  :pattern ( (Seq@Length$BoxType$ (Seq@Take$BoxType$ |s_$10_$1| |n_$5_$1|))))) :named ax_181))
   (assert (! (forall( (|s_$11_$0| Seq$ref$) (|n_$6_$0| Int) (|j_$1_$0| Int))(!(=> (and (< |j_$1_$0| (Seq@Length$ref$ |s_$11_$0|)) (and (< |j_$1_$0| |n_$6_$0|) (<= 0 |j_$1_$0|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$11_$0| |n_$6_$0|) |j_$1_$0|) (Seq@Index$ref$ |s_$11_$0| |j_$1_$0|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$11_$0| |n_$6_$0|) |j_$1_$0|)))) :named ax_182))
   (assert (! (forall( (|s_$11_$1| Seq$BoxType$) (|n_$6_$1| Int) (|j_$1_$1| Int))(!(=> (and (< |j_$1_$1| (Seq@Length$BoxType$ |s_$11_$1|)) (and (< |j_$1_$1| |n_$6_$1|) (<= 0 |j_$1_$1|))) (= (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$11_$1| |n_$6_$1|) |j_$1_$1|) (Seq@Index$BoxType$ |s_$11_$1| |j_$1_$1|)))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Take$BoxType$ |s_$11_$1| |n_$6_$1|) |j_$1_$1|)))) :named ax_183))
   (assert (! (forall( (|s_$12_$0| Seq$ref$) (|n_$7_$0| Int))(!(=> (<= 0 |n_$7_$0|) (and (=> (< (Seq@Length$ref$ |s_$12_$0|) |n_$7_$0|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$12_$0| |n_$7_$0|)) 0)) (=> (<= |n_$7_$0| (Seq@Length$ref$ |s_$12_$0|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$12_$0| |n_$7_$0|)) (- (Seq@Length$ref$ |s_$12_$0|) |n_$7_$0|)))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$12_$0| |n_$7_$0|))))) :named ax_184))
   (assert (! (forall( (|s_$12_$1| Seq$BoxType$) (|n_$7_$1| Int))(!(=> (<= 0 |n_$7_$1|) (and (=> (< (Seq@Length$BoxType$ |s_$12_$1|) |n_$7_$1|) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$12_$1| |n_$7_$1|)) 0)) (=> (<= |n_$7_$1| (Seq@Length$BoxType$ |s_$12_$1|)) (= (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$12_$1| |n_$7_$1|)) (- (Seq@Length$BoxType$ |s_$12_$1|) |n_$7_$1|)))))  :pattern ( (Seq@Length$BoxType$ (Seq@Drop$BoxType$ |s_$12_$1| |n_$7_$1|))))) :named ax_185))
   (assert (! (forall( (|s_$13_$0| Seq$ref$) (|n_$8_$0| Int) (|j_$2_$0| Int))(!(=> (and (< |j_$2_$0| (- (Seq@Length$ref$ |s_$13_$0|) |n_$8_$0|)) (and (<= 0 |n_$8_$0|) (<= 0 |j_$2_$0|))) (= (Seq@Index$ref$ (Seq@Drop$ref$ |s_$13_$0| |n_$8_$0|) |j_$2_$0|) (Seq@Index$ref$ |s_$13_$0| (+ |j_$2_$0| |n_$8_$0|))))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Drop$ref$ |s_$13_$0| |n_$8_$0|) |j_$2_$0|)))) :named ax_186))
   (assert (! (forall( (|s_$13_$1| Seq$BoxType$) (|n_$8_$1| Int) (|j_$2_$1| Int))(!(=> (and (< |j_$2_$1| (- (Seq@Length$BoxType$ |s_$13_$1|) |n_$8_$1|)) (and (<= 0 |n_$8_$1|) (<= 0 |j_$2_$1|))) (= (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$13_$1| |n_$8_$1|) |j_$2_$1|) (Seq@Index$BoxType$ |s_$13_$1| (+ |j_$2_$1| |n_$8_$1|))))  :weight  25 :pattern ( (Seq@Index$BoxType$ (Seq@Drop$BoxType$ |s_$13_$1| |n_$8_$1|) |j_$2_$1|)))) :named ax_187))
   (assert (! (forall( (|s_$14_$0| Seq$ref$) (|t_$1_$0| Seq$ref$))(!(and (= |t_$1_$0| (Seq@Drop$ref$ (Seq@Append$ref$ |s_$14_$0| |t_$1_$0|) (Seq@Length$ref$ |s_$14_$0|))) (= (Seq@Take$ref$ (Seq@Append$ref$ |s_$14_$0| |t_$1_$0|) (Seq@Length$ref$ |s_$14_$0|)) |s_$14_$0|))  :pattern ( (Seq@Append$ref$ |s_$14_$0| |t_$1_$0|)))) :named ax_188))
   (assert (! (forall( (|s_$14_$1| Seq$BoxType$) (|t_$1_$1| Seq$BoxType$))(!(and (= |t_$1_$1| (Seq@Drop$BoxType$ (Seq@Append$BoxType$ |s_$14_$1| |t_$1_$1|) (Seq@Length$BoxType$ |s_$14_$1|))) (= (Seq@Take$BoxType$ (Seq@Append$BoxType$ |s_$14_$1| |t_$1_$1|) (Seq@Length$BoxType$ |s_$14_$1|)) |s_$14_$1|))  :pattern ( (Seq@Append$BoxType$ |s_$14_$1| |t_$1_$1|)))) :named ax_189))
   (assert (! (forall( (|s_$2_$0| Seq$ref$) (|i_$13| Int) (|v_$0_$0| ref) (|len_$2| Int))(!(=> (<= 0 |len_$2|) (= (Seq@Length$ref$ (Seq@Build$ref$ |s_$2_$0| |i_$13| |v_$0_$0| |len_$2|)) |len_$2|))  :pattern ( (Seq@Length$ref$ (Seq@Build$ref$ |s_$2_$0| |i_$13| |v_$0_$0| |len_$2|))))) :named ax_190))
   (assert (! (forall( (|s_$2_$1| Seq$BoxType$) (|i_$14| Int) (|v_$0_$1| BoxType) (|len_$3| Int))(!(=> (<= 0 |len_$3|) (= (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$2_$1| |i_$14| |v_$0_$1| |len_$3|)) |len_$3|))  :pattern ( (Seq@Length$BoxType$ (Seq@Build$BoxType$ |s_$2_$1| |i_$14| |v_$0_$1| |len_$3|))))) :named ax_191))
   (assert (! (forall( (|s_$3_$0| Seq$ref$) (|i_$0_$0| Int) (|v_$1_$0| ref) (|len_$0_$0| Int) (|n_$0_$0| Int))(!(=> (and (< |n_$0_$0| |len_$0_$0|) (<= 0 |n_$0_$0|)) (and (=> (= |n_$0_$0| |i_$0_$0|) (= |v_$1_$0| (Seq@Index$ref$ (Seq@Build$ref$ |s_$3_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|))) (=> (not (= |n_$0_$0| |i_$0_$0|)) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$3_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|) (Seq@Index$ref$ |s_$3_$0| |n_$0_$0|)))))  :pattern ( (Seq@Index$ref$ (Seq@Build$ref$ |s_$3_$0| |i_$0_$0| |v_$1_$0| |len_$0_$0|) |n_$0_$0|)))) :named ax_192))
   (assert (! (forall( (|s_$3_$1| Seq$BoxType$) (|i_$0_$1| Int) (|v_$1_$1| BoxType) (|len_$0_$1| Int) (|n_$0_$1| Int))(!(=> (and (< |n_$0_$1| |len_$0_$1|) (<= 0 |n_$0_$1|)) (and (=> (= |n_$0_$1| |i_$0_$1|) (= |v_$1_$1| (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$3_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|))) (=> (not (= |n_$0_$1| |i_$0_$1|)) (= (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$3_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|) (Seq@Index$BoxType$ |s_$3_$1| |n_$0_$1|)))))  :pattern ( (Seq@Index$BoxType$ (Seq@Build$BoxType$ |s_$3_$1| |i_$0_$1| |v_$1_$1| |len_$0_$1|) |n_$0_$1|)))) :named ax_193))
   (assert (! (forall( (|s_$4_$0| Seq$ref$) (|i_$1_$0| Int) (|v_$2_$0| ref))(!(=> (and (< |i_$1_$0| (Seq@Length$ref$ |s_$4_$0|)) (<= 0 |i_$1_$0|)) (= (Seq@Length$ref$ (Seq@Update$ref$ |s_$4_$0| |i_$1_$0| |v_$2_$0|)) (Seq@Length$ref$ |s_$4_$0|)))  :pattern ( (Seq@Length$ref$ (Seq@Update$ref$ |s_$4_$0| |i_$1_$0| |v_$2_$0|))))) :named ax_194))
   (assert (! (forall( (|s_$4_$1| Seq$BoxType$) (|i_$1_$1| Int) (|v_$2_$1| BoxType))(!(=> (and (< |i_$1_$1| (Seq@Length$BoxType$ |s_$4_$1|)) (<= 0 |i_$1_$1|)) (= (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$4_$1| |i_$1_$1| |v_$2_$1|)) (Seq@Length$BoxType$ |s_$4_$1|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Update$BoxType$ |s_$4_$1| |i_$1_$1| |v_$2_$1|))))) :named ax_195))
   (assert (! (forall( (|s_$5_$0| Seq$ref$) (|i_$2_$0| Int) (|v_$3_$0| ref) (|n_$1_$0| Int))(!(=> (and (< |n_$1_$0| (Seq@Length$ref$ |s_$5_$0|)) (<= 0 |n_$1_$0|)) (and (=> (= |n_$1_$0| |i_$2_$0|) (= |v_$3_$0| (Seq@Index$ref$ (Seq@Update$ref$ |s_$5_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|))) (=> (not (= |n_$1_$0| |i_$2_$0|)) (= (Seq@Index$ref$ (Seq@Update$ref$ |s_$5_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|) (Seq@Index$ref$ |s_$5_$0| |n_$1_$0|)))))  :pattern ( (Seq@Index$ref$ (Seq@Update$ref$ |s_$5_$0| |i_$2_$0| |v_$3_$0|) |n_$1_$0|)))) :named ax_196))
   (assert (! (forall( (|s_$5_$1| Seq$BoxType$) (|i_$2_$1| Int) (|v_$3_$1| BoxType) (|n_$1_$1| Int))(!(=> (and (< |n_$1_$1| (Seq@Length$BoxType$ |s_$5_$1|)) (<= 0 |n_$1_$1|)) (and (=> (= |n_$1_$1| |i_$2_$1|) (= |v_$3_$1| (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$5_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|))) (=> (not (= |n_$1_$1| |i_$2_$1|)) (= (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$5_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|) (Seq@Index$BoxType$ |s_$5_$1| |n_$1_$1|)))))  :pattern ( (Seq@Index$BoxType$ (Seq@Update$BoxType$ |s_$5_$1| |i_$2_$1| |v_$3_$1|) |n_$1_$1|)))) :named ax_197))
   (assert (! (forall( (|s_$6_$0| Seq$ref$) (|x_$6_$0| ref))(!(= (Seq@Contains$ref$ |s_$6_$0| |x_$6_$0|) (exists( (|i_$3_$1| Int))(!(and (= |x_$6_$0| (Seq@Index$ref$ |s_$6_$0| |i_$3_$1|)) (and (< |i_$3_$1| (Seq@Length$ref$ |s_$6_$0|)) (<= 0 |i_$3_$1|)))  :pattern ( (Seq@Index$ref$ |s_$6_$0| |i_$3_$1|)))))  :pattern ( (Seq@Contains$ref$ |s_$6_$0| |x_$6_$0|)))) :named ax_198))
   (assert (! (forall( (|s_$6_$1| Seq$BoxType$) (|x_$6_$1| BoxType))(!(= (Seq@Contains$BoxType$ |s_$6_$1| |x_$6_$1|) (exists( (|i_$3_$3| Int))(!(and (= |x_$6_$1| (Seq@Index$BoxType$ |s_$6_$1| |i_$3_$3|)) (and (< |i_$3_$3| (Seq@Length$BoxType$ |s_$6_$1|)) (<= 0 |i_$3_$3|)))  :pattern ( (Seq@Index$BoxType$ |s_$6_$1| |i_$3_$3|)))))  :pattern ( (Seq@Contains$BoxType$ |s_$6_$1| |x_$6_$1|)))) :named ax_199))
   (assert (! (forall( (|s_$7_$0| Seq$ref$) (|i0_$0| Int) (|v0_$0| ref) (|len0_$0| Int) (|i1_$0| Int) (|v1_$0| ref) (|len1_$0| Int) (|x_$10_$0| ref))(!(=> (and (< |i1_$0| |len1_$0|) (and (<= |len0_$0| |i1_$0|) (and (< |i0_$0| |len0_$0|) (<= 0 |i0_$0|)))) (= (Seq@Contains$ref$ (Seq@Build$ref$ (Seq@Build$ref$ |s_$7_$0| |i0_$0| |v0_$0| |len0_$0|) |i1_$0| |v1_$0| |len1_$0|) |x_$10_$0|) (or (= |x_$10_$0| |v1_$0|) (Seq@Contains$ref$ (Seq@Build$ref$ |s_$7_$0| |i0_$0| |v0_$0| |len0_$0|) |x_$10_$0|))))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ (Seq@Build$ref$ |s_$7_$0| |i0_$0| |v0_$0| |len0_$0|) |i1_$0| |v1_$0| |len1_$0|) |x_$10_$0|)))) :named ax_200))
   (assert (! (forall( (|s_$7_$1| Seq$BoxType$) (|i0_$1| Int) (|v0_$1| BoxType) (|len0_$1| Int) (|i1_$1| Int) (|v1_$1| BoxType) (|len1_$1| Int) (|x_$10_$1| BoxType))(!(=> (and (< |i1_$1| |len1_$1|) (and (<= |len0_$1| |i1_$1|) (and (< |i0_$1| |len0_$1|) (<= 0 |i0_$1|)))) (= (Seq@Contains$BoxType$ (Seq@Build$BoxType$ (Seq@Build$BoxType$ |s_$7_$1| |i0_$1| |v0_$1| |len0_$1|) |i1_$1| |v1_$1| |len1_$1|) |x_$10_$1|) (or (= |x_$10_$1| |v1_$1|) (Seq@Contains$BoxType$ (Seq@Build$BoxType$ |s_$7_$1| |i0_$1| |v0_$1| |len0_$1|) |x_$10_$1|))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Build$BoxType$ (Seq@Build$BoxType$ |s_$7_$1| |i0_$1| |v0_$1| |len0_$1|) |i1_$1| |v1_$1| |len1_$1|) |x_$10_$1|)))) :named ax_201))
   (assert (! (forall( (|s_$8_$0| Seq$ref$) (|n_$2_$0| Int) (|x_$11_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$8_$0| |n_$2_$0|) |x_$11_$0|) (exists( (|i_$5_$1| Int))(!(and (= |x_$11_$0| (Seq@Index$ref$ |s_$8_$0| |i_$5_$1|)) (and (< |i_$5_$1| (Seq@Length$ref$ |s_$8_$0|)) (and (< |i_$5_$1| |n_$2_$0|) (<= 0 |i_$5_$1|))))  :pattern ( (Seq@Index$ref$ |s_$8_$0| |i_$5_$1|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$8_$0| |n_$2_$0|) |x_$11_$0|)))) :named ax_202))
   (assert (! (forall( (|s_$8_$1| Seq$BoxType$) (|n_$2_$1| Int) (|x_$11_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$8_$1| |n_$2_$1|) |x_$11_$1|) (exists( (|i_$5_$3| Int))(!(and (= |x_$11_$1| (Seq@Index$BoxType$ |s_$8_$1| |i_$5_$3|)) (and (< |i_$5_$3| (Seq@Length$BoxType$ |s_$8_$1|)) (and (< |i_$5_$3| |n_$2_$1|) (<= 0 |i_$5_$3|))))  :pattern ( (Seq@Index$BoxType$ |s_$8_$1| |i_$5_$3|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Take$BoxType$ |s_$8_$1| |n_$2_$1|) |x_$11_$1|)))) :named ax_203))
   (assert (! (forall( (|s_$9_$0| Seq$ref$) (|n_$3_$0| Int) (|x_$12_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$9_$0| |n_$3_$0|) |x_$12_$0|) (exists( (|i_$6_$1| Int))(!(and (= |x_$12_$0| (Seq@Index$ref$ |s_$9_$0| |i_$6_$1|)) (and (< |i_$6_$1| (Seq@Length$ref$ |s_$9_$0|)) (and (<= |n_$3_$0| |i_$6_$1|) (<= 0 |n_$3_$0|))))  :pattern ( (Seq@Index$ref$ |s_$9_$0| |i_$6_$1|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$9_$0| |n_$3_$0|) |x_$12_$0|)))) :named ax_204))
   (assert (! (forall( (|s_$9_$1| Seq$BoxType$) (|n_$3_$1| Int) (|x_$12_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$9_$1| |n_$3_$1|) |x_$12_$1|) (exists( (|i_$6_$3| Int))(!(and (= |x_$12_$1| (Seq@Index$BoxType$ |s_$9_$1| |i_$6_$3|)) (and (< |i_$6_$3| (Seq@Length$BoxType$ |s_$9_$1|)) (and (<= |n_$3_$1| |i_$6_$3|) (<= 0 |n_$3_$1|))))  :pattern ( (Seq@Index$BoxType$ |s_$9_$1| |i_$6_$3|)))))  :pattern ( (Seq@Contains$BoxType$ (Seq@Drop$BoxType$ |s_$9_$1| |n_$3_$1|) |x_$12_$1|)))) :named ax_205))
   (assert (! (forall( (|s0_$0_$0| Seq$ref$) (|s1_$0_$0| Seq$ref$) (|n_$9| Int))(!(and (=> (<= (Seq@Length$ref$ |s0_$0_$0|) |n_$9|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|) (Seq@Index$ref$ |s1_$0_$0| (- |n_$9| (Seq@Length$ref$ |s0_$0_$0|))))) (=> (< |n_$9| (Seq@Length$ref$ |s0_$0_$0|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|) (Seq@Index$ref$ |s0_$0_$0| |n_$9|))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$0| |s1_$0_$0|) |n_$9|)))) :named ax_206))
   (assert (! (forall( (|s0_$0_$1| Seq$BoxType$) (|s1_$0_$1| Seq$BoxType$) (|n_$10| Int))(!(and (=> (<= (Seq@Length$BoxType$ |s0_$0_$1|) |n_$10|) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|) (Seq@Index$BoxType$ |s1_$0_$1| (- |n_$10| (Seq@Length$BoxType$ |s0_$0_$1|))))) (=> (< |n_$10| (Seq@Length$BoxType$ |s0_$0_$1|)) (= (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|) (Seq@Index$BoxType$ |s0_$0_$1| |n_$10|))))  :pattern ( (Seq@Index$BoxType$ (Seq@Append$BoxType$ |s0_$0_$1| |s1_$0_$1|) |n_$10|)))) :named ax_207))
   (assert (! (forall( (|s0_$1_$0| Seq$ref$) (|s1_$1_$0| Seq$ref$) (|x_$8_$0| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$0| |s1_$1_$0|) |x_$8_$0|) (or (Seq@Contains$ref$ |s1_$1_$0| |x_$8_$0|) (Seq@Contains$ref$ |s0_$1_$0| |x_$8_$0|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$0| |s1_$1_$0|) |x_$8_$0|)))) :named ax_208))
   (assert (! (forall( (|s0_$1_$1| Seq$BoxType$) (|s1_$1_$1| Seq$BoxType$) (|x_$8_$1| BoxType))(!(= (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$1| |s1_$1_$1|) |x_$8_$1|) (or (Seq@Contains$BoxType$ |s1_$1_$1| |x_$8_$1|) (Seq@Contains$BoxType$ |s0_$1_$1| |x_$8_$1|)))  :pattern ( (Seq@Contains$BoxType$ (Seq@Append$BoxType$ |s0_$1_$1| |s1_$1_$1|) |x_$8_$1|)))) :named ax_209))
   (assert (! (forall( (|s0_$2_$0| Seq$ref$) (|s1_$2_$0| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$ref$ |s1_$2_$0|) (Seq@Length$ref$ |s0_$2_$0|)) (forall( (|j_$4| Int))(!(=> (and (< |j_$4| (Seq@Length$ref$ |s0_$2_$0|)) (<= 0 |j_$4|)) (= (Seq@Index$ref$ |s1_$2_$0| |j_$4|) (Seq@Index$ref$ |s0_$2_$0| |j_$4|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$0| |j_$4|)) :pattern ( (Seq@Index$ref$ |s1_$2_$0| |j_$4|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$0| |s1_$2_$0|)))) :named ax_210))
   (assert (! (forall( (|s0_$2_$1| Seq$BoxType$) (|s1_$2_$1| Seq$BoxType$))(!(= (Seq@Equal$BoxType$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$BoxType$ |s1_$2_$1|) (Seq@Length$BoxType$ |s0_$2_$1|)) (forall( (|j_$6| Int))(!(=> (and (< |j_$6| (Seq@Length$BoxType$ |s0_$2_$1|)) (<= 0 |j_$6|)) (= (Seq@Index$BoxType$ |s1_$2_$1| |j_$6|) (Seq@Index$BoxType$ |s0_$2_$1| |j_$6|)))  :pattern ( (Seq@Index$BoxType$ |s0_$2_$1| |j_$6|)) :pattern ( (Seq@Index$BoxType$ |s1_$2_$1| |j_$6|))))))  :pattern ( (Seq@Equal$BoxType$ |s0_$2_$1| |s1_$2_$1|)))) :named ax_211))
   (assert (! (forall( (|s0_$4| Seq$ref$) (|s1_$4| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$4| |s1_$4|)) (+ (Seq@Length$ref$ |s0_$4|) (Seq@Length$ref$ |s1_$4|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$4| |s1_$4|))))) :named ax_212))
   (assert (! (forall( (|s0_$5| Seq$BoxType$) (|s1_$5| Seq$BoxType$))(!(= (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$5| |s1_$5|)) (+ (Seq@Length$BoxType$ |s0_$5|) (Seq@Length$BoxType$ |s1_$5|)))  :pattern ( (Seq@Length$BoxType$ (Seq@Append$BoxType$ |s0_$5| |s1_$5|))))) :named ax_213))
   (assert (! (forall( (|t_$0_$0| ref))(!(= |t_$0_$0| (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$0|) 0))  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$0|) 0)))) :named ax_214))
   (assert (! (forall( (|t_$0_$1| BoxType))(!(= |t_$0_$1| (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$1|) 0))  :pattern ( (Seq@Index$BoxType$ (Seq@Singleton$BoxType$ |t_$0_$1|) 0)))) :named ax_215))
   (assert (! (forall( (|t_$3| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|))))) :named ax_216))
   (assert (! (forall( (|t_$4| BoxType))(!(= (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|)) 1)  :pattern ( (Seq@Length$BoxType$ (Seq@Singleton$BoxType$ |t_$4|))))) :named ax_217))
   (assert (! (forall( (|v_$5| Bool) (|f_$0_$0| Field$Bool$) (|r_$0_$0| ref) (|H_$0_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$5|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |H_$0_$0| |r_$0_$0| |f_$0_$0| |v_$5|))) :named ax_218))
   (assert (! (forall( (|v_$6| Int) (|f_$0_$1| Field$Int$) (|r_$0_$1| ref) (|H_$0_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$6|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |H_$0_$1| |r_$0_$1| |f_$0_$1| |v_$6|))) :named ax_219))
   (assert (! (forall( (|v_$7| ref) (|f_$0_$2| Field$ref$) (|r_$0_$2| ref) (|H_$0_$2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$0_$2| |r_$0_$2| |f_$0_$2| |v_$7|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |H_$0_$2| |r_$0_$2| |f_$0_$2| |v_$7|))) :named ax_220))
   (assert (! (forall( (|v_$8| BoxType) (|f_$0_$3| Field$BoxType$) (|r_$0_$3| ref) (|H_$0_$3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$3| |r_$0_$3| |f_$0_$3| |v_$8|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ |H_$0_$3| |r_$0_$3| |f_$0_$3| |v_$8|))) :named ax_221))
   (assert (! (forall( (|v_$9| $@Map@@BoxType@To@Bool@@) (|f_$0_$4| Field$$@Map@@BoxType@To@Bool@@$) (|r_$0_$4| ref) (|H_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(= (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$0_$4| |r_$0_$4| |f_$0_$4| |v_$9|) (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ |H_$0_$4| |r_$0_$4| |f_$0_$4| |v_$9|))) :named ax_222))
   (assert (! (forall( (|x_$13_$0| Bool))(!(= |x_$13_$0| ($Unbox$Bool$ ($Box$Bool$ |x_$13_$0|)))  :pattern ( ($Box$Bool$ |x_$13_$0|)))) :named ax_223))
   (assert (! (forall( (|x_$13_$1| TickType))(!(= |x_$13_$1| ($Unbox$TickType$ ($Box$TickType$ |x_$13_$1|)))  :pattern ( ($Box$TickType$ |x_$13_$1|)))) :named ax_224))
   (assert (! (forall( (|x_$13_$10| DatatypeType))(!(= |x_$13_$10| ($Unbox$DatatypeType$ ($Box$DatatypeType$ |x_$13_$10|)))  :pattern ( ($Box$DatatypeType$ |x_$13_$10|)))) :named ax_225))
   (assert (! (forall( (|x_$13_$11| ClassName))(!(= |x_$13_$11| ($Unbox$ClassName$ ($Box$ClassName$ |x_$13_$11|)))  :pattern ( ($Box$ClassName$ |x_$13_$11|)))) :named ax_226))
   (assert (! (forall( (|x_$13_$12| Field$Bool$))(!(= |x_$13_$12| ($Unbox$Field$Bool$$ ($Box$Field$Bool$$ |x_$13_$12|)))  :pattern ( ($Box$Field$Bool$$ |x_$13_$12|)))) :named ax_227))
   (assert (! (forall( (|x_$13_$13| Field$ref$))(!(= |x_$13_$13| ($Unbox$Field$ref$$ ($Box$Field$ref$$ |x_$13_$13|)))  :pattern ( ($Box$Field$ref$$ |x_$13_$13|)))) :named ax_228))
   (assert (! (forall( (|x_$13_$14| Field$$@Map@@BoxType@To@Bool@@$))(!(= |x_$13_$14| ($Unbox$Field$$@Map@@BoxType@To@Bool@@$$ ($Box$Field$$@Map@@BoxType@To@Bool@@$$ |x_$13_$14|)))  :pattern ( ($Box$Field$$@Map@@BoxType@To@Bool@@$$ |x_$13_$14|)))) :named ax_229))
   (assert (! (forall( (|x_$13_$15| Field$Int$))(!(= |x_$13_$15| ($Unbox$Field$Int$$ ($Box$Field$Int$$ |x_$13_$15|)))  :pattern ( ($Box$Field$Int$$ |x_$13_$15|)))) :named ax_230))
   (assert (! (forall( (|x_$13_$16| $@Map@@$T0@@ref@Field$$T0$@To@Bool@@))(!(= |x_$13_$16| ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$13_$16|)))  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ |x_$13_$16|)))) :named ax_231))
   (assert (! (forall( (|x_$13_$2| Int))(!(= |x_$13_$2| ($Unbox$Int$ ($Box$Int$ |x_$13_$2|)))  :pattern ( ($Box$Int$ |x_$13_$2|)))) :named ax_232))
   (assert (! (forall( (|x_$13_$3| Seq$ref$))(!(= |x_$13_$3| ($Unbox$Seq$ref$$ ($Box$Seq$ref$$ |x_$13_$3|)))  :pattern ( ($Box$Seq$ref$$ |x_$13_$3|)))) :named ax_233))
   (assert (! (forall( (|x_$13_$4| ref))(!(= |x_$13_$4| ($Unbox$ref$ ($Box$ref$ |x_$13_$4|)))  :pattern ( ($Box$ref$ |x_$13_$4|)))) :named ax_234))
   (assert (! (forall( (|x_$13_$5| Seq$BoxType$))(!(= |x_$13_$5| ($Unbox$Seq$BoxType$$ ($Box$Seq$BoxType$$ |x_$13_$5|)))  :pattern ( ($Box$Seq$BoxType$$ |x_$13_$5|)))) :named ax_235))
   (assert (! (forall( (|x_$13_$6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= |x_$13_$6| ($Unbox$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$13_$6|)))  :pattern ( ($Box$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |x_$13_$6|)))) :named ax_236))
   (assert (! (forall( (|x_$13_$7| BoxType))(!(= |x_$13_$7| ($Unbox$BoxType$ ($Box$BoxType$ |x_$13_$7|)))  :pattern ( ($Box$BoxType$ |x_$13_$7|)))) :named ax_237))
   (assert (! (forall( (|x_$13_$8| Field$BoxType$))(!(= |x_$13_$8| ($Unbox$Field$BoxType$$ ($Box$Field$BoxType$$ |x_$13_$8|)))  :pattern ( ($Box$Field$BoxType$$ |x_$13_$8|)))) :named ax_238))
   (assert (! (forall( (|x_$13_$9| $@Map@@BoxType@To@Bool@@))(!(= |x_$13_$9| ($Unbox$$@Map@@BoxType@To@Bool@@$ ($Box$$@Map@@BoxType@To@Bool@@$ |x_$13_$9|)))  :pattern ( ($Box$$@Map@@BoxType@To@Bool@@$ |x_$13_$9|)))) :named ax_239))
   (assert (! (forall( (|x_$14| Int) (|h_$8| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(=> ($IsGoodHeap |h_$8|) (GenericAlloc ($Box$Int$ |x_$14|) |h_$8|))) :named ax_240))
   (assert (! (forall( (|x_$7| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$7|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$7|)))) :named ax_241))
   (assert (! (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap this alloc) :named ax_242))
   (assert (! (Node.Balanced $Heap t@6) :named ax_243))
   (assert (! (Node.Balanced@canCall $Heap t@6) :named ax_244))
   (assert (! (Node.BalanceValid $Heap t@6) :named ax_245))
   (assert (! (Node.BalanceValid@canCall $Heap t@6) :named ax_246))
   (assert (! (Node.Valid $Heap t@6) :named ax_247))
   (assert (! (Node.Valid@canCall $Heap t@6) :named ax_248))
   (assert (! (not $NP@457) :named ax_249))
   (assert (! (not $NP@458) :named ax_250))
   (assert (! (not $NP@785) :named ax_251))
   (assert (! (not $NP@786) :named ax_252))
   (assert (! (not ($Unbox$Bool$ ($Box$Bool$ false))) :named ax_253))
   (assert (! (not (= AVLTree.Contents Node.Contents)) :named ax_254))
   (assert (! (not (= AVLTree.Contents Node.Repr)) :named ax_255))
   (assert (! (not (= AVLTree.Repr AVLTree.Contents)) :named ax_256))
   (assert (! (not (= AVLTree.Repr Node.Contents)) :named ax_257))
   (assert (! (not (= AVLTree.Repr Node.Repr)) :named ax_258))
   (assert (! (not (= AVLTree.root Node.left)) :named ax_259))
   (assert (! (not (= AVLTree.root Node.right)) :named ax_260))
   (assert (! (not (= class.AVLTree class.Node)) :named ax_261))
   (assert (! (not (= class.Node class.AVLTree)) :named ax_262))
   (assert (! (not (= Node.balance Node.value)) :named ax_263))
   (assert (! (not (= Node.Contents AVLTree.Contents)) :named ax_264))
   (assert (! (not (= Node.Contents AVLTree.Repr)) :named ax_265))
   (assert (! (not (= Node.Contents Node.Repr)) :named ax_266))
   (assert (! (not (= Node.left AVLTree.root)) :named ax_267))
   (assert (! (not (= Node.Repr AVLTree.Contents)) :named ax_268))
   (assert (! (not (= Node.Repr AVLTree.Repr)) :named ax_269))
   (assert (! (not (= Node.Repr Node.Contents)) :named ax_270))
   (assert (! (not (= Node.right AVLTree.root)) :named ax_271))
   (assert (! (not (= Node.right Node.left)) :named ax_272))
   (assert (! (not (= Node.value Node.balance)) :named ax_273))
   (assert (! (not (= null this)) :named ax_274))
   (assert (! (or (= r@8 null) (and (= (dtype r@8) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap r@8 alloc))) :named ax_275))
   (assert (! (or (= t@6 null) (and (= (dtype t@6) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap t@6 alloc))) :named ax_276))
   (assert (! (or (and (= (dtype $rhs@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@0 alloc)) (= $rhs@0 null)) :named ax_277))
   (assert (! (or (and (= (dtype $rhs@14) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@14 alloc)) (= $rhs@14 null)) :named ax_278))
   (assert (! (or (and (= (dtype $rhs@15) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@15 alloc)) (= $rhs@15 null)) :named ax_279))
   (assert (! (or (and (= (dtype $rhs@7) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@7 alloc)) (= $rhs@7 null)) :named ax_280))
   (assert (! (or (and (= (dtype $rhs@8) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@8 alloc)) (= $rhs@8 null)) :named ax_281))
   (assert (! (or (and (= (dtype $rhs@9) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $rhs@9 alloc)) (= $rhs@9 null)) :named ax_282))
   (assert (! true :named ax_283))

;Program
(assert (not
(let ((anon36_Then_assertion (and
    (forall( (|$o_$41_$0| ref) (|$f_$36_$0| Field$Bool$))(=> (and (and (not (= |$o_$41_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$0| alloc)) (= |$o_$41_$0| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$41_$0| |$f_$36_$0|)))
    (forall( (|$o_$41_$1| ref) (|$f_$36_$1| Field$Int$))(=> (and (and (not (= |$o_$41_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$1| alloc)) (= |$o_$41_$1| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$41_$1| |$f_$36_$1|)))
    (forall( (|$o_$41_$2| ref) (|$f_$36_$2| Field$ref$))(=> (and (and (not (= |$o_$41_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$2| alloc)) (= |$o_$41_$2| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$41_$2| |$f_$36_$2|)))
    (forall( (|$o_$41_$3| ref) (|$f_$36_$3| Field$BoxType$))(=> (and (and (not (= |$o_$41_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$3| alloc)) (= |$o_$41_$3| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$41_$3| |$f_$36_$3|)))
    (forall( (|$o_$41_$4| ref) (|$f_$36_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$41_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$4| alloc)) (= |$o_$41_$4| $nw@0)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$41_$4| |$f_$36_$4|)))
)))
(let ((anon37_Then@19_assertion (and
    (forall( (|$o_$43_$0| ref) (|$f_$38_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$43_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$0| alloc)) (not (= t@63@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$43_$0|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$43_$0| |$f_$38_$0|)))
    (forall( (|$o_$43_$1| ref) (|$f_$38_$1| Field$Int$))(=> (and (and (and (not (= |$o_$43_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$1| alloc)) (not (= t@63@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$43_$1|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$43_$1| |$f_$38_$1|)))
    (forall( (|$o_$43_$2| ref) (|$f_$38_$2| Field$ref$))(=> (and (and (and (not (= |$o_$43_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$2| alloc)) (not (= t@63@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$43_$2|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$43_$2| |$f_$38_$2|)))
    (forall( (|$o_$43_$3| ref) (|$f_$38_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$43_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$3| alloc)) (not (= t@63@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$43_$3|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$43_$3| |$f_$38_$3|)))
    (forall( (|$o_$43_$4| ref) (|$f_$38_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$43_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$4| alloc)) (not (= t@63@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$43_$4|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$43_$4| |$f_$38_$4|)))
)))
(let ((anon43_Then@19_assertion (and
    (forall( (|$o_$47_$0| ref) (|$f_$40_$0| Field$Bool$))(=> (and (and (and (not (= |$o_$47_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$0| alloc)) (not (= t@74@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$47_$0|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$47_$0| |$f_$40_$0|)))
    (forall( (|$o_$47_$1| ref) (|$f_$40_$1| Field$Int$))(=> (and (and (and (not (= |$o_$47_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$1| alloc)) (not (= t@74@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$47_$1|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$47_$1| |$f_$40_$1|)))
    (forall( (|$o_$47_$2| ref) (|$f_$40_$2| Field$ref$))(=> (and (and (and (not (= |$o_$47_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$2| alloc)) (not (= t@74@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$47_$2|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$47_$2| |$f_$40_$2|)))
    (forall( (|$o_$47_$3| ref) (|$f_$40_$3| Field$BoxType$))(=> (and (and (and (not (= |$o_$47_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$3| alloc)) (not (= t@74@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$47_$3|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$47_$3| |$f_$40_$3|)))
    (forall( (|$o_$47_$4| ref) (|$f_$40_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (not (= |$o_$47_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$4| alloc)) (not (= t@74@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$47_$4|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$47_$4| |$f_$40_$4|)))
)))
(let ((anon42_Then@3_assertion (and
    (forall( (|$o_$51_$0| ref) (|$f_$42_$0| Field$Bool$))(=> (and (and (not (= |$o_$51_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$51_$0| alloc)) (or (= |$o_$51_$0| n@70@0) (and (not (= n@70@0 null)) (= |$o_$51_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$51_$0| |$f_$42_$0|)))
    (forall( (|$o_$51_$1| ref) (|$f_$42_$1| Field$Int$))(=> (and (and (not (= |$o_$51_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$51_$1| alloc)) (or (= |$o_$51_$1| n@70@0) (and (not (= n@70@0 null)) (= |$o_$51_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$51_$1| |$f_$42_$1|)))
    (forall( (|$o_$51_$2| ref) (|$f_$42_$2| Field$ref$))(=> (and (and (not (= |$o_$51_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$51_$2| alloc)) (or (= |$o_$51_$2| n@70@0) (and (not (= n@70@0 null)) (= |$o_$51_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$51_$2| |$f_$42_$2|)))
    (forall( (|$o_$51_$3| ref) (|$f_$42_$3| Field$BoxType$))(=> (and (and (not (= |$o_$51_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$51_$3| alloc)) (or (= |$o_$51_$3| n@70@0) (and (not (= n@70@0 null)) (= |$o_$51_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$51_$3| |$f_$42_$3|)))
    (forall( (|$o_$51_$4| ref) (|$f_$42_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$51_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$51_$4| alloc)) (or (= |$o_$51_$4| n@70@0) (and (not (= n@70@0 null)) (= |$o_$51_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$51_$4| |$f_$42_$4|)))
)))
(let ((anon16_assertion (and
    (forall( (|$o_$53_$0| ref) (|$f_$44_$0| Field$Bool$))(=> (and (and (not (= |$o_$53_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$53_$0| alloc)) (or (= |$o_$53_$0| t@6) (and (not (= t@6 null)) (= |$o_$53_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$53_$0| |$f_$44_$0|)))
    (forall( (|$o_$53_$1| ref) (|$f_$44_$1| Field$Int$))(=> (and (and (not (= |$o_$53_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$53_$1| alloc)) (or (= |$o_$53_$1| t@6) (and (not (= t@6 null)) (= |$o_$53_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$53_$1| |$f_$44_$1|)))
    (forall( (|$o_$53_$2| ref) (|$f_$44_$2| Field$ref$))(=> (and (and (not (= |$o_$53_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$53_$2| alloc)) (or (= |$o_$53_$2| t@6) (and (not (= t@6 null)) (= |$o_$53_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$53_$2| |$f_$44_$2|)))
    (forall( (|$o_$53_$3| ref) (|$f_$44_$3| Field$BoxType$))(=> (and (and (not (= |$o_$53_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$53_$3| alloc)) (or (= |$o_$53_$3| t@6) (and (not (= t@6 null)) (= |$o_$53_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$53_$3| |$f_$44_$3|)))
    (forall( (|$o_$53_$4| ref) (|$f_$44_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$53_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$53_$4| alloc)) (or (= |$o_$53_$4| t@6) (and (not (= t@6 null)) (= |$o_$53_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$53_$4| |$f_$44_$4|)))
)))
(let ((anon48_Then@3_assertion (and
    (forall( (|$o_$55_$0| ref) (|$f_$46_$0| Field$Bool$))(=> (and (and (not (= |$o_$55_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$55_$0| alloc)) (or (= |$o_$55_$0| n@79@0) (and (not (= n@79@0 null)) (= |$o_$55_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$55_$0| |$f_$46_$0|)))
    (forall( (|$o_$55_$1| ref) (|$f_$46_$1| Field$Int$))(=> (and (and (not (= |$o_$55_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$55_$1| alloc)) (or (= |$o_$55_$1| n@79@0) (and (not (= n@79@0 null)) (= |$o_$55_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$55_$1| |$f_$46_$1|)))
    (forall( (|$o_$55_$2| ref) (|$f_$46_$2| Field$ref$))(=> (and (and (not (= |$o_$55_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$55_$2| alloc)) (or (= |$o_$55_$2| n@79@0) (and (not (= n@79@0 null)) (= |$o_$55_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$55_$2| |$f_$46_$2|)))
    (forall( (|$o_$55_$3| ref) (|$f_$46_$3| Field$BoxType$))(=> (and (and (not (= |$o_$55_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$55_$3| alloc)) (or (= |$o_$55_$3| n@79@0) (and (not (= n@79@0 null)) (= |$o_$55_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$55_$3| |$f_$46_$3|)))
    (forall( (|$o_$55_$4| ref) (|$f_$46_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$55_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$55_$4| alloc)) (or (= |$o_$55_$4| n@79@0) (and (not (= n@79@0 null)) (= |$o_$55_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$55_$4| |$f_$46_$4|)))
)))
(let ((anon32_assertion (and
    (forall( (|$o_$57_$0| ref) (|$f_$48_$0| Field$Bool$))(=> (and (and (not (= |$o_$57_$0| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$57_$0| alloc)) (or (= |$o_$57_$0| t@6) (and (not (= t@6 null)) (= |$o_$57_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$57_$0| |$f_$48_$0|)))
    (forall( (|$o_$57_$1| ref) (|$f_$48_$1| Field$Int$))(=> (and (and (not (= |$o_$57_$1| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$57_$1| alloc)) (or (= |$o_$57_$1| t@6) (and (not (= t@6 null)) (= |$o_$57_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$57_$1| |$f_$48_$1|)))
    (forall( (|$o_$57_$2| ref) (|$f_$48_$2| Field$ref$))(=> (and (and (not (= |$o_$57_$2| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$57_$2| alloc)) (or (= |$o_$57_$2| t@6) (and (not (= t@6 null)) (= |$o_$57_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$57_$2| |$f_$48_$2|)))
    (forall( (|$o_$57_$3| ref) (|$f_$48_$3| Field$BoxType$))(=> (and (and (not (= |$o_$57_$3| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$57_$3| alloc)) (or (= |$o_$57_$3| t@6) (and (not (= t@6 null)) (= |$o_$57_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$57_$3| |$f_$48_$3|)))
    (forall( (|$o_$57_$4| ref) (|$f_$48_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (not (= |$o_$57_$4| null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$57_$4| alloc)) (or (= |$o_$57_$4| t@6) (and (not (= t@6 null)) (= |$o_$57_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$57_$4| |$f_$48_$4|)))
)))
(let ((anon37_Then@14_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (forall( (|i#16_$7| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Contents) ($Box$Int$ |i#16_$7|)) (< |i#16_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value)))))))))
)))
(let ((anon43_Then@14_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (forall( (|i#16_$11| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Contents) ($Box$Int$ |i#16_$11|)) (< |i#16_$11| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value)))))))))
)))
(let ((anon6@16_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) null)) (forall( (|i#16_$15| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$15|)) (< |i#16_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.value)))))))))
)))
(let ((anon22@16_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) null)) (forall( (|i#16_$16| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$16|)) (< |i#16_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.value)))))))))
)))
(let ((anon16@16_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (forall( (|i#16_$20| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$20|)) (< |i#16_$20| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 t@6 Node.value)))))))))
)))
(let ((anon32@16_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (forall( (|i#16_$26| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$26|)) (< |i#16_$26| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 t@6 Node.value)))))))))
)))
(let ((anon37_Then@15_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (forall( (|i#17_$6| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Contents) ($Box$Int$ |i#17_$6|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value) |i#17_$6|))))))))
)))
(let ((anon43_Then@15_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (forall( (|i#17_$10| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Contents) ($Box$Int$ |i#17_$10|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value) |i#17_$10|))))))))
)))
(let ((anon32@17_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (forall( (|i#17_$25| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$25|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 t@6 Node.value) |i#17_$25|))))))))
)))
(let ((anon6@17_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (forall( (|i#17_$14| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$14|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.value) |i#17_$14|))))))))
)))
(let ((anon16@17_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (forall( (|i#17_$19| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$19|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 t@6 Node.value) |i#17_$19|))))))))
)))
(let ((anon22@17_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) null)) (forall( (|i#17_$15| Int))(=> true (=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$15|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.value) |i#17_$15|))))))))
)))
(let ((anon12@3_assertion (and
    (Node.Valid $Heap@15 t@6)
)))
(let ((anon12@4_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@15 t@6) (or (Node.BalanceValid $Heap@15 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 t@6 Node.balance) (- (Node.Height $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.right)) (Node.Height $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left)))))))
)))
(let ((anon12@5_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@15 t@6) (or (Node.BalanceValid $Heap@15 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left) null)) (Node.BalanceValid $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left))))))
)))
(let ((anon12@6_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@15 t@6) (or (Node.BalanceValid $Heap@15 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.right) null)) (Node.BalanceValid $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.right))))))
)))
(let ((anon16@10_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr))))))
)))
(let ((anon16@11_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)))))
)))
(let ((anon16@12_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)))))
)))
(let ((anon16@13_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Repr))))))
)))
(let ((anon16@14_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
)))
(let ((anon16@15_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
)))
(let ((anon16@18_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@18 t@6) (or (Node.BalanceValid $Heap@18 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 t@6 Node.balance) (- (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)))))))
)))
(let ((anon16@19_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@18 t@6) (or (Node.BalanceValid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))))
)))
(let ((anon16@20_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@18 t@6) (or (Node.BalanceValid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right))))))
)))
(let ((anon16@21_assertion (and
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 t@6 Node.balance) (- 0 2))
)))
(let ((anon16@22_assertion (and
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.balance) (- 0 2)))
)))
(let ((anon16@23_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (or (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.balance) (- (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)))))))
)))
(let ((anon16@24_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (or (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left))))))
)))
(let ((anon16@25_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (or (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right))))))
)))
(let ((anon16@26_assertion (and
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) Node.balance) 1)))))
)))
(let ((anon16@27_assertion (and
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) Node.right)))))
)))
(let ((anon16@28_assertion (and
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) Node.left)))))
)))
(let ((anon16@29_assertion (and
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) Node.balance) 1)))))
)))
(let ((anon16@3_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr) ($Box$ref$ t@6)))))
)))
(let ((anon16@30_assertion (and
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) Node.right)))))
)))
(let ((anon16@31_assertion (and
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) Node.left)))))
)))
(let ((anon16@32_assertion (and
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.balance) 1)))))
)))
(let ((anon16@33_assertion (and
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.right)))))
)))
(let ((anon16@34_assertion (and
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.left)))))
)))
(let ((anon16@4_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr) ($Box$ref$ null))))))
)))
(let ((anon16@5_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)))))))
)))
(let ((anon16@6_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
)))
(let ((anon16@7_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr))))))
)))
(let ((anon16@8_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)))))))
)))
(let ((anon16@9_assertion (and
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
)))
(let ((anon22@10_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr))))))
)))
(let ((anon22@11_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left)))))
)))
(let ((anon22@12_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right)))))
)))
(let ((anon22@13_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) Node.Repr))))))
)))
(let ((anon22@14_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
)))
(let ((anon22@15_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
)))
(let ((anon22@3_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr) ($Box$ref$ t@6)))))
)))
(let ((anon22@4_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr) ($Box$ref$ null))))))
)))
(let ((anon22@5_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left)))))))
)))
(let ((anon22@6_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
)))
(let ((anon22@7_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr))))))
)))
(let ((anon22@8_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right)))))))
)))
(let ((anon22@9_assertion (and
    (=> (Node.Valid@canCall $Heap@7 t@6) (or (Node.Valid $Heap@7 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
)))
(let ((anon28@3_assertion (and
    (Node.Valid $Heap@8 t@6)
)))
(let ((anon28@4_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@8 t@6) (or (Node.BalanceValid $Heap@8 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) (- (Node.Height $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)) (Node.Height $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left)))))))
)))
(let ((anon28@5_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@8 t@6) (or (Node.BalanceValid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left) null)) (Node.BalanceValid $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left))))))
)))
(let ((anon28@6_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@8 t@6) (or (Node.BalanceValid $Heap@8 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (Node.BalanceValid $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right))))))
)))
(let ((anon32@10_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr))))))
)))
(let ((anon32@11_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)))))
)))
(let ((anon32@12_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)))))
)))
(let ((anon32@13_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Repr))))))
)))
(let ((anon32@14_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
)))
(let ((anon32@15_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
)))
(let ((anon32@18_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@11 t@6) (or (Node.BalanceValid $Heap@11 t@6) (=> (not (= t@6 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 t@6 Node.balance) (- (Node.Height $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (Node.Height $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)))))))
)))
(let ((anon32@19_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@11 t@6) (or (Node.BalanceValid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left))))))
)))
(let ((anon32@20_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@11 t@6) (or (Node.BalanceValid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))))
)))
(let ((anon32@21_assertion (and
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 t@6 Node.balance) 2)
)))
(let ((anon32@22_assertion (and
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.balance) 1) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.balance) 2))
)))
(let ((anon32@23_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (or (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.balance) (- (Node.Height $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (Node.Height $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)))))))
)))
(let ((anon32@24_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (or (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) null)) (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left))))))
)))
(let ((anon32@25_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (or (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) null)) (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right))))))
)))
(let ((anon32@26_assertion (and
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) Node.balance) 1)))))
)))
(let ((anon32@27_assertion (and
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) Node.right)))))
)))
(let ((anon32@28_assertion (and
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) Node.left)))))
)))
(let ((anon32@29_assertion (and
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) Node.balance) 1)))))
)))
(let ((anon32@3_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr) ($Box$ref$ t@6)))))
)))
(let ((anon32@30_assertion (and
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) Node.right)))))
)))
(let ((anon32@31_assertion (and
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) Node.left)))))
)))
(let ((anon32@32_assertion (and
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.balance) 1)))))
)))
(let ((anon32@33_assertion (and
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.right)))))
)))
(let ((anon32@34_assertion (and
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.left)))))
)))
(let ((anon32@4_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr) ($Box$ref$ null))))))
)))
(let ((anon32@5_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)))))))
)))
(let ((anon32@6_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
)))
(let ((anon32@7_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr))))))
)))
(let ((anon32@8_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)))))))
)))
(let ((anon32@9_assertion (and
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
)))
(let ((anon37_Then@1_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))
)))
(let ((anon37_Then@10_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right)))))
)))
(let ((anon37_Then@11_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr))))))
)))
(let ((anon37_Then@12_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) Set@Empty$BoxType$))))))
)))
(let ((anon37_Then@13_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Contents) Set@Empty$BoxType$))))))
)))
(let ((anon37_Then@2_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ null))))))
)))
(let ((anon37_Then@3_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left)))))))
)))
(let ((anon37_Then@36_assertion (and
    (=> (Node.BalanceValid@canCall $Heap t@63@0) (or (Node.BalanceValid $Heap t@63@0) (=> (not (= t@63@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@63@0 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.left)))))))
)))
(let ((anon37_Then@37_assertion (and
    (=> (Node.BalanceValid@canCall $Heap t@63@0) (or (Node.BalanceValid $Heap t@63@0) (=> (not (= t@63@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.left))))))
)))
(let ((anon37_Then@38_assertion (and
    (=> (Node.BalanceValid@canCall $Heap t@63@0) (or (Node.BalanceValid $Heap t@63@0) (=> (not (= t@63@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.right))))))
)))
(let ((anon37_Then@39_assertion (and
    (=> (Node.Balanced@canCall $Heap t@63@0) (or (Node.Balanced $Heap t@63@0) (=> (not (= t@63@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@63@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@63@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@63@0 Node.balance) 1)))))
)))
(let ((anon37_Then@4_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))))
)))
(let ((anon37_Then@40_assertion (and
    (=> (Node.Balanced@canCall $Heap t@63@0) (or (Node.Balanced $Heap t@63@0) (=> (not (= t@63@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.right)))))
)))
(let ((anon37_Then@41_assertion (and
    (=> (Node.Balanced@canCall $Heap t@63@0) (or (Node.Balanced $Heap t@63@0) (=> (not (= t@63@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.left)))))
)))
(let ((anon37_Then@5_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr))))))
)))
(let ((anon37_Then@6_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right)))))))
)))
(let ((anon37_Then@7_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))))))))
)))
(let ((anon37_Then@8_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr))))))
)))
(let ((anon37_Then@9_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left)))))
)))
(let ((anon39_Then@1_assertion (and
    (Node.Valid $Heap@14 n@66@0)
)))
(let ((anon39_Then@3_assertion (and
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) alloc) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) class.Node)))
)))
(let ((anon39_Then@5_assertion (and
    (= (Node.Height@2 $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left)) (Node.Height@2 $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))
)))
(let ((anon41_Else@1_assertion (and
    (=> (Node.Balanced@canCall $Heap@15 t@6) (or (Node.Balanced $Heap@15 t@6) (=> (not (= t@6 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 t@6 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 t@6 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 t@6 Node.balance) 1)))))
)))
(let ((anon41_Else@2_assertion (and
    (=> (Node.Balanced@canCall $Heap@15 t@6) (or (Node.Balanced $Heap@15 t@6) (=> (not (= t@6 null)) (Node.Balanced $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.right)))))
)))
(let ((anon41_Else@3_assertion (and
    (=> (Node.Balanced@canCall $Heap@15 t@6) (or (Node.Balanced $Heap@15 t@6) (=> (not (= t@6 null)) (Node.Balanced $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left)))))
)))
(let ((anon41_Then@1_assertion (and
    (Node.BalanceValid $Heap@15 n@69@0)
    (Node.Valid $Heap@15 n@69@0)
)))
(let ((anon41_Then@2_assertion (and
    (=> (Node.Balanced@canCall $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left)) (or (Node.Balanced $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left) Node.balance) 1)))))
)))
(let ((anon41_Then@3_assertion (and
    (=> (Node.Balanced@canCall $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left)) (or (Node.Balanced $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left) null)) (Node.Balanced $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left) Node.right)))))
)))
(let ((anon41_Then@4_assertion (and
    (=> (Node.Balanced@canCall $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left)) (or (Node.Balanced $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left) null)) (Node.Balanced $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left) Node.left)))))
)))
(let ((anon43_Else@1_assertion (and
    (= key@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value))
)))
(let ((anon43_Then@1_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))))
)))
(let ((anon43_Then@10_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right)))))
)))
(let ((anon43_Then@11_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr))))))
)))
(let ((anon43_Then@12_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) Set@Empty$BoxType$))))))
)))
(let ((anon43_Then@13_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Contents) Set@Empty$BoxType$))))))
)))
(let ((anon43_Then@2_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ null))))))
)))
(let ((anon43_Then@3_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left)))))))
)))
(let ((anon43_Then@36_assertion (and
    (=> (Node.BalanceValid@canCall $Heap t@74@0) (or (Node.BalanceValid $Heap t@74@0) (=> (not (= t@74@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@74@0 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.left)))))))
)))
(let ((anon43_Then@37_assertion (and
    (=> (Node.BalanceValid@canCall $Heap t@74@0) (or (Node.BalanceValid $Heap t@74@0) (=> (not (= t@74@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.left))))))
)))
(let ((anon43_Then@38_assertion (and
    (=> (Node.BalanceValid@canCall $Heap t@74@0) (or (Node.BalanceValid $Heap t@74@0) (=> (not (= t@74@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.right))))))
)))
(let ((anon43_Then@39_assertion (and
    (=> (Node.Balanced@canCall $Heap t@74@0) (or (Node.Balanced $Heap t@74@0) (=> (not (= t@74@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@74@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@74@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@74@0 Node.balance) 1)))))
)))
(let ((anon43_Then@4_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))))))
)))
(let ((anon43_Then@40_assertion (and
    (=> (Node.Balanced@canCall $Heap t@74@0) (or (Node.Balanced $Heap t@74@0) (=> (not (= t@74@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.right)))))
)))
(let ((anon43_Then@41_assertion (and
    (=> (Node.Balanced@canCall $Heap t@74@0) (or (Node.Balanced $Heap t@74@0) (=> (not (= t@74@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.left)))))
)))
(let ((anon43_Then@5_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr))))))
)))
(let ((anon43_Then@6_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right)))))))
)))
(let ((anon43_Then@7_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))))))))
)))
(let ((anon43_Then@8_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr))))))
)))
(let ((anon43_Then@9_assertion (and
    (=> (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left)))))
)))
(let ((anon47_Else@1_assertion (and
    (=> (Node.Balanced@canCall $Heap@8 t@6) (or (Node.Balanced $Heap@8 t@6) (=> (not (= t@6 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 1)))))
)))
(let ((anon47_Else@2_assertion (and
    (=> (Node.Balanced@canCall $Heap@8 t@6) (or (Node.Balanced $Heap@8 t@6) (=> (not (= t@6 null)) (Node.Balanced $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)))))
)))
(let ((anon47_Else@3_assertion (and
    (=> (Node.Balanced@canCall $Heap@8 t@6) (or (Node.Balanced $Heap@8 t@6) (=> (not (= t@6 null)) (Node.Balanced $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left)))))
)))
(let ((anon47_Then@1_assertion (and
    (Node.BalanceValid $Heap@8 n@78@0)
    (Node.Valid $Heap@8 n@78@0)
)))
(let ((anon47_Then@2_assertion (and
    (=> (Node.Balanced@canCall $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)) (or (Node.Balanced $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.balance) 1)))))
)))
(let ((anon47_Then@3_assertion (and
    (=> (Node.Balanced@canCall $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)) (or (Node.Balanced $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (Node.Balanced $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.right)))))
)))
(let ((anon47_Then@4_assertion (and
    (=> (Node.Balanced@canCall $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)) (or (Node.Balanced $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) null)) (Node.Balanced $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right) Node.left)))))
)))
(let ((anon6@10_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr))))))
)))
(let ((anon6@11_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left)))))
)))
(let ((anon6@12_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (Node.Valid $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right)))))
)))
(let ((anon6@13_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Repr))))))
)))
(let ((anon6@14_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))))))
)))
(let ((anon6@15_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))))))
)))
(let ((anon6@3_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr) ($Box$ref$ t@6)))))
)))
(let ((anon6@4_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr) ($Box$ref$ null))))))
)))
(let ((anon6@5_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left)))))))
)))
(let ((anon6@6_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))))
)))
(let ((anon6@7_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr))))))
)))
(let ((anon6@8_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right)))))))
)))
(let ((anon6@9_assertion (and
    (=> (Node.Valid@canCall $Heap@14 t@6) (or (Node.Valid $Heap@14 t@6) (=> (not (= t@6 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))))
)))
(let ((GeneratedUnifiedExit@1_assertion (and
    (or (or (and (not (= t@6 null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ r@8@0))) (= r@8@0 null)) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap r@8@0 alloc)))
)))
(let ((GeneratedUnifiedExit@2_assertion (and
    (=> (not (= t@6 null)) (forall( (|$o_$59| ref))(=> (and (and (not (= |$o_$59| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 r@8@0 Node.Repr) ($Box$ref$ |$o_$59|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ |$o_$59|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$59| alloc)))))
)))
(let ((GeneratedUnifiedExit@21_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@20 r@8@0) (or (Node.BalanceValid $Heap@20 r@8@0) (=> (not (= r@8@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 r@8@0 Node.balance) (- (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.right)) (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.left)))))))
)))
(let ((GeneratedUnifiedExit@22_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@20 r@8@0) (or (Node.BalanceValid $Heap@20 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.left) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.left))))))
)))
(let ((GeneratedUnifiedExit@23_assertion (and
    (=> (Node.BalanceValid@canCall $Heap@20 r@8@0) (or (Node.BalanceValid $Heap@20 r@8@0) (=> (not (= r@8@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.right) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.right))))))
)))
(let ((GeneratedUnifiedExit@24_assertion (and
    (=> (Node.Balanced@canCall $Heap@20 r@8@0) (or (Node.Balanced $Heap@20 r@8@0) (=> (not (= r@8@0 null)) (or (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 r@8@0 Node.balance) (- 0 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 r@8@0 Node.balance) 0)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 r@8@0 Node.balance) 1)))))
)))
(let ((GeneratedUnifiedExit@25_assertion (and
    (=> (Node.Balanced@canCall $Heap@20 r@8@0) (or (Node.Balanced $Heap@20 r@8@0) (=> (not (= r@8@0 null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.right)))))
)))
(let ((GeneratedUnifiedExit@26_assertion (and
    (=> (Node.Balanced@canCall $Heap@20 r@8@0) (or (Node.Balanced $Heap@20 r@8@0) (=> (not (= r@8@0 null)) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.left)))))
)))
(let ((GeneratedUnifiedExit@27_assertion (and
    (= (- (Node.Height@2 $Heap@20 r@8@0) (Node.Height@2 $Heap t@6)) deltaH@9@2)
)))
(let ((GeneratedUnifiedExit@28_assertion (and
    (or (= deltaH@9@2 0) (= deltaH@9@2 1))
)))
(let ((GeneratedUnifiedExit@29_assertion (and
    (=> (and (not (= t@6 null)) (= deltaH@9@2 1)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 r@8@0 Node.balance) 0)))
)))
(let ((GeneratedUnifiedExit@3_assertion (and
    (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 r@8@0 Node.Contents) (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7)))))
)))
(let ((GeneratedUnifiedExit@4_assertion (and
    (=> (= t@6 null) (forall( (|$o_$60| ref))(=> (and (not (= |$o_$60| null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 r@8@0 Node.Repr) ($Box$ref$ |$o_$60|))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$60| alloc)))))
)))
(let ((GeneratedUnifiedExit@5_assertion (and
    (=> (= t@6 null) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 r@8@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
)))
(let ((anon22@1_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Contents)
)))
(let ((anon6@1_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Contents)
)))
(let ((anon37_Then@43_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Repr)
)))
(let ((anon43_Then@43_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Repr)
)))
(let ((anon12@1_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.balance)
)))
(let ((anon28@1_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.balance)
)))
(let ((anon37_Then@17_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 t@6 Node.left)
)))
(let ((anon43_Then@17_assertion (and
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 t@6 Node.right)
)))
(let ((anon37_Then@20_assertion (and
    (not (Set@Subset$BoxType$ (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@63@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) Set@Empty$BoxType$)))
    (Set@Subset$BoxType$ (ite (not (= t@63@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$))
)))
(let ((anon42_Then@5_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right) null))
)))
(let ((anon43_Then@20_assertion (and
    (not (Set@Subset$BoxType$ (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@74@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) Set@Empty$BoxType$)))
    (Set@Subset$BoxType$ (ite (not (= t@74@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$))
)))
(let ((anon48_Then@5_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left) null))
)))
(let ((GeneratedUnifiedExit@29 (=> (and true
    (or (= deltaH@9@2 1) (= deltaH@9@2 0))
  )
    GeneratedUnifiedExit@29_assertion
)))
(let ((GeneratedUnifiedExit@28 (=> (and true
    (= deltaH@9@2 (+ (Node.Height@2 $Heap@20 r@8@0) (* (- 1) (Node.Height@2 $Heap t@6))))
  )(and 
    GeneratedUnifiedExit@28_assertion
    GeneratedUnifiedExit@29
))))
(let ((GeneratedUnifiedExit@27 (=> (and true
    (=> (Node.Balanced@canCall $Heap@20 r@8@0) (or (Node.Balanced $Heap@20 r@8@0) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.left))))
  )(and 
    GeneratedUnifiedExit@27_assertion
    GeneratedUnifiedExit@28
))))
(let ((GeneratedUnifiedExit@26 (=> (and true
    (=> (Node.Balanced@canCall $Heap@20 r@8@0) (or (Node.Balanced $Heap@20 r@8@0) (Node.Balanced $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.right))))
  )(and 
    GeneratedUnifiedExit@26_assertion
    GeneratedUnifiedExit@27
))))
(let ((GeneratedUnifiedExit@25 (=> (and true
    (=> (Node.Balanced@canCall $Heap@20 r@8@0) (or (Node.Balanced $Heap@20 r@8@0) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 r@8@0 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 r@8@0 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 r@8@0 Node.balance) 0)))))
  )(and 
    GeneratedUnifiedExit@25_assertion
    GeneratedUnifiedExit@26
))))
(let ((GeneratedUnifiedExit@24 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@20 r@8@0) (or (Node.BalanceValid $Heap@20 r@8@0) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.right) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.right)))))
  )(and 
    GeneratedUnifiedExit@24_assertion
    GeneratedUnifiedExit@25
))))
(let ((GeneratedUnifiedExit@23 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@20 r@8@0) (or (Node.BalanceValid $Heap@20 r@8@0) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.left) null)) (Node.BalanceValid $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.left)))))
  )(and 
    GeneratedUnifiedExit@23_assertion
    GeneratedUnifiedExit@24
))))
(let ((GeneratedUnifiedExit@22 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@20 r@8@0) (or (Node.BalanceValid $Heap@20 r@8@0) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@20 r@8@0 Node.balance) (- (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.right)) (Node.Height $Heap@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.left))))))
  )(and 
    GeneratedUnifiedExit@22_assertion
    GeneratedUnifiedExit@23
))))
(let ((GeneratedUnifiedExit@6 (=> (and true
    (= (= true $@bf_23) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.left))))
    (= (= true $@bf_24) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@20 r@8@0 Node.right))))
    (=> (= t@6 null) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 r@8@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
    (Node.Valid $Heap@20 r@8@0)
  )(and 
    GeneratedUnifiedExit@21_assertion
    GeneratedUnifiedExit@22
))))
(let ((GeneratedUnifiedExit@5 (=> (and true
    (=> (= t@6 null) (forall( (|$o_$60| ref))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 r@8@0 Node.Repr) ($Box$ref$ |$o_$60|)) (not (= null |$o_$60|))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$60| alloc)))))
  )(and 
    GeneratedUnifiedExit@5_assertion
    GeneratedUnifiedExit@6
))))
(let ((GeneratedUnifiedExit@4 (=> (and true
    (=> (not (= t@6 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 r@8@0 Node.Contents) (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7)))))
  )(and 
    GeneratedUnifiedExit@4_assertion
    GeneratedUnifiedExit@5
))))
(let ((GeneratedUnifiedExit@3 (=> (and true
    (=> (not (= t@6 null)) (forall( (|$o_$59| ref))(=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@20 r@8@0 Node.Repr) ($Box$ref$ |$o_$59|)) (not (= null |$o_$59|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ |$o_$59|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$59| alloc)))))
  )(and 
    GeneratedUnifiedExit@3_assertion
    GeneratedUnifiedExit@4
))))
(let ((GeneratedUnifiedExit@2 (=> (and true
    (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) ($Box$ref$ r@8@0)) (not (= t@6 null))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap r@8@0 alloc)))
  )(and 
    GeneratedUnifiedExit@2_assertion
    GeneratedUnifiedExit@3
))))
(let ((GeneratedUnifiedExit (=> (and true
    (not (= null r@8@0))
    (not (= r@8@0 null))
  )(and 
    GeneratedUnifiedExit@1_assertion
    GeneratedUnifiedExit@2
))))
(let (($join_$@condition_$0 (=> (and true
  )
    GeneratedUnifiedExit
)))
(let ((anon36_Then@1 (=> (and true
    ($HeapSucc $Heap@0 $Heap@1)
    ($IsGoodHeap $Heap@1)
    (= $Heap@1 $Heap@20)
    (= $nw@0 r@8@0)
    (= (- (Node.Height $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right)) (Node.Height $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance))
    (= (= true $@bf_84) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left))))
    (= (= true $@bf_85) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right))))
    (= 1 deltaH@9@2)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left))
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right))
    (and (and (Node.Balanced $Heap@1 null) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.balance) 0)))) (Node.Balanced $Heap@1 null))
    (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ $nw@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Repr) Set@Empty$BoxType$))) (and (and (Node.Valid $Heap@1 null) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) ($Box$ref$ $nw@0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Repr) ($Box$ref$ null))))) (Node.Valid $Heap@1 null))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 $nw@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 $nw@0 Node.right) Node.Contents) Set@Empty$BoxType$))))
    (forall( (|$o_$41_$0| ref) (|$f_$36_$0| Field$Bool$))(=> (and (= |$o_$41_$0| $nw@0) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$0| alloc) (not (= null |$o_$41_$0|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$41_$0| |$f_$36_$0|)))
    (forall( (|$o_$41_$1| ref) (|$f_$36_$1| Field$Int$))(=> (and (= |$o_$41_$1| $nw@0) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$1| alloc) (not (= null |$o_$41_$1|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$41_$1| |$f_$36_$1|)))
    (forall( (|$o_$41_$2| ref) (|$f_$36_$2| Field$ref$))(=> (and (= |$o_$41_$2| $nw@0) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$2| alloc) (not (= null |$o_$41_$2|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$41_$2| |$f_$36_$2|)))
    (forall( (|$o_$41_$3| ref) (|$f_$36_$3| Field$BoxType$))(=> (and (= |$o_$41_$3| $nw@0) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$3| alloc) (not (= null |$o_$41_$3|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$41_$3| |$f_$36_$3|)))
    (forall( (|$o_$41_$4| ref) (|$f_$36_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (= |$o_$41_$4| $nw@0) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$41_$4| alloc) (not (= null |$o_$41_$4|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$41_$4| |$f_$36_$4|)))
    (forall( (|$o_$42_$0| ref) (|$f_$37_$0| Field$Bool$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$0| alloc) (not (= null |$o_$42_$0|))) (or (= |$o_$42_$0| $nw@0) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@1 |$o_$42_$0| |$f_$37_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$0| |$f_$37_$0|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@1 |$o_$42_$0| |$f_$37_$0|))))
    (forall( (|$o_$42_$1| ref) (|$f_$37_$1| Field$Int$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$1| alloc) (not (= null |$o_$42_$1|))) (or (= |$o_$42_$1| $nw@0) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 |$o_$42_$1| |$f_$37_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@0 |$o_$42_$1| |$f_$37_$1|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@1 |$o_$42_$1| |$f_$37_$1|))))
    (forall( (|$o_$42_$2| ref) (|$f_$37_$2| Field$ref$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$2| alloc) (not (= null |$o_$42_$2|))) (or (= |$o_$42_$2| $nw@0) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 |$o_$42_$2| |$f_$37_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@0 |$o_$42_$2| |$f_$37_$2|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@1 |$o_$42_$2| |$f_$37_$2|))))
    (forall( (|$o_$42_$3| ref) (|$f_$37_$3| Field$BoxType$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$3| alloc) (not (= null |$o_$42_$3|))) (or (= |$o_$42_$3| $nw@0) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@1 |$o_$42_$3| |$f_$37_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@0 |$o_$42_$3| |$f_$37_$3|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@1 |$o_$42_$3| |$f_$37_$3|))))
    (forall( (|$o_$42_$4| ref) (|$f_$37_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@0 |$o_$42_$4| alloc) (not (= null |$o_$42_$4|))) (or (= |$o_$42_$4| $nw@0) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 |$o_$42_$4| |$f_$37_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@0 |$o_$42_$4| |$f_$37_$4|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 |$o_$42_$4| |$f_$37_$4|))))
    (Node.Balanced $Heap@1 $nw@0)
    (Node.Balanced@canCall $Heap@1 $nw@0)
    (Node.BalanceValid $Heap@1 $nw@0)
    (Node.BalanceValid@canCall $Heap@1 $nw@0)
    (Node.Valid $Heap@1 $nw@0)
    (Node.Valid@canCall $Heap@1 $nw@0)
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@1 $nw@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7)))
  )
    GeneratedUnifiedExit
)))
(let (($join_$@condition_$2 (=> (and true
  )
    $join_$@condition_$0
)))
(let (($join_$@condition_$4 (=> (and true
  )
    $join_$@condition_$0
)))
(let ((anon36_Then (=> (and true
    $@condition
    ($IsGoodHeap $Heap@0)
    (= $Heap@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $nw@0 alloc true))
    (= class.Node (dtype $nw@0))
    (= null t@6)
    (not (= $nw@0 null))
    (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap $nw@0 alloc))
  )(and 
    anon36_Then_assertion
    anon36_Then@1
))))
(let ((anon43_Else@2 (=> (and true
    (= $Heap $Heap@20)
    (= 0 deltaH@9@2)
    (= key@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap r@8@0 Node.value))
    (= r@8@0 t@6)
  )
    $join_$@condition_$2
)))
(let (($join_$@condition_$6 (=> (and true
  )
    $join_$@condition_$2
)))
(let (($join_2@1 (=> (and true
  )
    $join_$@condition_$4
)))
(let ((anon39_Then@6 (=> (and true
    (= $Heap@14 $Heap@20)
    (= (Node.Height $Heap@14 call5formal@r@8@0) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap r@8@0 Node.left)))
    (= (Node.Height@2 $Heap@14 call5formal@r@8@0) (Node.Height@2 $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap r@8@0 Node.left)))
    (= 0 deltaH@9@2)
    (= call5formal@r@8@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 r@8@0 Node.left))
    (= r@8@0 t@6)
  )
    $join_$@condition_$4
)))
(let ((anon43_Else (=> (and true
    (not $@condition_$2)
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value) key@7))
  )(and 
    anon43_Else@1_assertion
    anon43_Else@2
))))
(let (($join_2 (=> (and true
  )
    $join_$@condition_$6
)))
(let ((anon45_Then (=> (and true
    $@condition_$6
    (= $Heap@20 $Heap@7)
    (= 0 call6formal@deltaH@9@0)
    (= 0 deltaH@9@2)
    (= r@8@0 t@6)
  )
    $join_$@condition_$6
)))
(let ((anon16@35 (=> (and true
    ($HeapSucc $Heap@18 $Heap@19)
    ($IsGoodHeap $Heap@19)
    (= $Heap@19 $Heap@20)
    (= (= true $@bf_103) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left))))
    (= (= true $@bf_104) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right))))
    (= (Node.Height@2 $Heap@18 t@6) (+ (Node.Height@2 $Heap@19 call3formal@r@29@0) 1))
    (= 0 (+ (Node.Height $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right)) (* (- 1) (Node.Height $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left)))))
    (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@19 call3formal@r@29@0 Node.balance))
    (= call3formal@r@29@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))
    (= call3formal@r@29@0 r@8@0)
    (= class.Node (dtype call3formal@r@29@0))
    (= deltaH@9@1 deltaH@9@2)
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.left)))))
    (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) null)) (Node.BalanceValid $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) null)) (Node.BalanceValid $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left))))
    (and (and (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@29@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) Node.Repr) Set@Empty$BoxType$))) (and (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@29@0)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@29@0))))))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) Node.Repr))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@19 call3formal@r@29@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) null)) (forall( (|i#16_$21| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$21|)) (< |i#16_$21| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@19 call3formal@r@29@0 Node.value)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) null)) (forall( (|i#17_$20| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$20|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@19 call3formal@r@29@0 Node.value) |i#17_$20|)))))
    (forall( (|$o_$54_$0| ref) (|$f_$45_$0| Field$Bool$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$54_$0| alloc) (not (= null |$o_$54_$0|))) (or (or (= t@6 |$o_$54_$0|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@19 |$o_$54_$0| |$f_$45_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$54_$0| |$f_$45_$0|))) (= |$o_$54_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@19 |$o_$54_$0| |$f_$45_$0|))))
    (forall( (|$o_$54_$1| ref) (|$f_$45_$1| Field$Int$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$54_$1| alloc) (not (= null |$o_$54_$1|))) (or (or (= t@6 |$o_$54_$1|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@19 |$o_$54_$1| |$f_$45_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 |$o_$54_$1| |$f_$45_$1|))) (= |$o_$54_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@19 |$o_$54_$1| |$f_$45_$1|))))
    (forall( (|$o_$54_$2| ref) (|$f_$45_$2| Field$ref$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$54_$2| alloc) (not (= null |$o_$54_$2|))) (or (or (= t@6 |$o_$54_$2|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 |$o_$54_$2| |$f_$45_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 |$o_$54_$2| |$f_$45_$2|))) (= |$o_$54_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 |$o_$54_$2| |$f_$45_$2|))))
    (forall( (|$o_$54_$3| ref) (|$f_$45_$3| Field$BoxType$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$54_$3| alloc) (not (= null |$o_$54_$3|))) (or (or (= t@6 |$o_$54_$3|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@19 |$o_$54_$3| |$f_$45_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@18 |$o_$54_$3| |$f_$45_$3|))) (= |$o_$54_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@19 |$o_$54_$3| |$f_$45_$3|))))
    (forall( (|$o_$54_$4| ref) (|$f_$45_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$54_$4| alloc) (not (= null |$o_$54_$4|))) (or (or (= t@6 |$o_$54_$4|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 |$o_$54_$4| |$f_$45_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 |$o_$54_$4| |$f_$45_$4|))) (= |$o_$54_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 |$o_$54_$4| |$f_$45_$4|))))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@19 call3formal@r@29@0 alloc)
    (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Repr) ($Box$ref$ call3formal@r@29@0))
    (Node.Balanced $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left))
    (Node.Balanced $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right))
    (Node.Balanced $Heap@19 call3formal@r@29@0)
    (Node.Balanced@canCall $Heap@19 call3formal@r@29@0)
    (Node.BalanceValid $Heap@19 call3formal@r@29@0)
    (Node.BalanceValid@canCall $Heap@19 call3formal@r@29@0)
    (Node.Valid $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left))
    (Node.Valid $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right))
    (Node.Valid $Heap@19 call3formal@r@29@0)
    (Node.Valid@canCall $Heap@19 call3formal@r@29@0)
    (not (= null call3formal@r@29@0))
    (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Repr) ($Box$ref$ null)))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Contents))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@19 call3formal@r@29@0 Node.value))) (ite $@bf_103 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite $@bf_104 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) Node.Contents) Set@Empty$BoxType$)))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 call3formal@r@29@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@29@0)) (ite $@bf_103 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite $@bf_104 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@19 call3formal@r@29@0 Node.right) Node.Repr) Set@Empty$BoxType$)))
  )
    $join_2@1
)))
(let ((anon41_Else@4 (=> (and true
    (= $Heap@15 $Heap@20)
    (= deltaH@9@1 deltaH@9@2)
    (= r@8@0 t@6)
    (Node.Balanced $Heap@15 r@8@0)
  )
    $join_2@1
)))
(let ((anon39_Then@4 (=> (and true
    (Node.Height@canCall $Heap n@67@0)
    (Node.Height@canCall $Heap@14 call5formal@r@8@0)
    (Node.Valid $Heap n@67@0)
    (or (= n@67@0 null) (and (= (dtype n@67@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap n@67@0 alloc)))
  )(and 
    anon39_Then@5_assertion
    anon39_Then@6
))))
(let ((anon32@35 (=> (and true
    ($HeapSucc $Heap@11 $Heap@12)
    ($IsGoodHeap $Heap@12)
    (= $Heap@12 $Heap@20)
    (= (= true $@bf_111) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left))))
    (= (= true $@bf_112) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right))))
    (= (Node.Height@2 $Heap@11 t@6) (+ (Node.Height@2 $Heap@12 call3formal@r@34@0) 1))
    (= 0 (+ (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right)) (* (- 1) (Node.Height $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left)))))
    (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 call3formal@r@34@0 Node.balance))
    (= call3formal@r@34@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))
    (= call3formal@r@34@0 r@8@0)
    (= class.Node (dtype call3formal@r@34@0))
    (= deltaH@9@0 deltaH@9@2)
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.left)))))
    (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) null)) (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) null)) (Node.BalanceValid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left))))
    (and (and (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@34@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) Node.Repr) Set@Empty$BoxType$))) (and (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@34@0)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@34@0))))))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) Node.Repr))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 call3formal@r@34@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) null)) (forall( (|i#16_$27| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$27|)) (< |i#16_$27| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 call3formal@r@34@0 Node.value)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) null)) (forall( (|i#17_$26| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$26|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 call3formal@r@34@0 Node.value) |i#17_$26|)))))
    (forall( (|$o_$58_$0| ref) (|$f_$49_$0| Field$Bool$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$58_$0| alloc) (not (= null |$o_$58_$0|))) (or (or (= t@6 |$o_$58_$0|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$58_$0| |$f_$49_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$58_$0| |$f_$49_$0|))) (= |$o_$58_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 |$o_$58_$0| |$f_$49_$0|))))
    (forall( (|$o_$58_$1| ref) (|$f_$49_$1| Field$Int$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$58_$1| alloc) (not (= null |$o_$58_$1|))) (or (or (= t@6 |$o_$58_$1|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 |$o_$58_$1| |$f_$49_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 |$o_$58_$1| |$f_$49_$1|))) (= |$o_$58_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 |$o_$58_$1| |$f_$49_$1|))))
    (forall( (|$o_$58_$2| ref) (|$f_$49_$2| Field$ref$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$58_$2| alloc) (not (= null |$o_$58_$2|))) (or (or (= t@6 |$o_$58_$2|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 |$o_$58_$2| |$f_$49_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 |$o_$58_$2| |$f_$49_$2|))) (= |$o_$58_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 |$o_$58_$2| |$f_$49_$2|))))
    (forall( (|$o_$58_$3| ref) (|$f_$49_$3| Field$BoxType$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$58_$3| alloc) (not (= null |$o_$58_$3|))) (or (or (= t@6 |$o_$58_$3|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@12 |$o_$58_$3| |$f_$49_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@11 |$o_$58_$3| |$f_$49_$3|))) (= |$o_$58_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@12 |$o_$58_$3| |$f_$49_$3|))))
    (forall( (|$o_$58_$4| ref) (|$f_$49_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$58_$4| alloc) (not (= null |$o_$58_$4|))) (or (or (= t@6 |$o_$58_$4|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 |$o_$58_$4| |$f_$49_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 |$o_$58_$4| |$f_$49_$4|))) (= |$o_$58_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 |$o_$58_$4| |$f_$49_$4|))))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@12 call3formal@r@34@0 alloc)
    (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Repr) ($Box$ref$ call3formal@r@34@0))
    (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left))
    (Node.Balanced $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right))
    (Node.Balanced $Heap@12 call3formal@r@34@0)
    (Node.Balanced@canCall $Heap@12 call3formal@r@34@0)
    (Node.BalanceValid $Heap@12 call3formal@r@34@0)
    (Node.BalanceValid@canCall $Heap@12 call3formal@r@34@0)
    (Node.Valid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left))
    (Node.Valid $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right))
    (Node.Valid $Heap@12 call3formal@r@34@0)
    (Node.Valid@canCall $Heap@12 call3formal@r@34@0)
    (not (= null call3formal@r@34@0))
    (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Repr) ($Box$ref$ null)))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Contents))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@12 call3formal@r@34@0 Node.value))) (ite $@bf_111 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite $@bf_112 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) Node.Contents) Set@Empty$BoxType$)))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 call3formal@r@34@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@34@0)) (ite $@bf_111 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite $@bf_112 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@12 call3formal@r@34@0 Node.right) Node.Repr) Set@Empty$BoxType$)))
  )
    $join_2
)))
(let ((anon47_Else@4 (=> (and true
    (= $Heap@20 $Heap@8)
    (= deltaH@9@0 deltaH@9@2)
    (= r@8@0 t@6)
    (Node.Balanced $Heap@20 r@8@0)
  )
    $join_2
)))
(let ((anon16@34 (=> (and true
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.right)))))
  )(and 
    anon16@34_assertion
    anon16@35
))))
(let ((anon41_Else@3 (=> (and true
    (or (Node.Balanced $Heap@15 t@6) (Node.Balanced $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.right)))
  )(and 
    anon41_Else@3_assertion
    anon41_Else@4
))))
(let ((anon39_Then@2 (=> (and true
    (= n@67@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
    (Node.Height@canCall $Heap@14 n@66@0)
    (Node.Valid $Heap@14 n@66@0)
  )(and 
    anon39_Then@3_assertion
    anon39_Then@4
))))
(let ((anon32@34 (=> (and true
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.right)))))
  )(and 
    anon32@34_assertion
    anon32@35
))))
(let ((anon47_Else@3 (=> (and true
    (or (Node.Balanced $Heap@8 t@6) (Node.Balanced $Heap@8 call5formal@r@8@0))
  )(and 
    anon47_Else@3_assertion
    anon47_Else@4
))))
(let ((anon16@33 (=> (and true
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.balance) 0))))))
  )(and 
    anon16@33_assertion
    anon16@34
))))
(let ((anon41_Else@2 (=> (and true
    (or (Node.Balanced $Heap@15 t@6) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 t@6 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 t@6 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 t@6 Node.balance) 0))))
  )(and 
    anon41_Else@2_assertion
    anon41_Else@3
))))
(let ((anon39_Then (=> (and true
    $@condition_$4
    (= 0 call6formal@deltaH@9@0)
    (= n@66@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left))
  )(and 
    anon39_Then@1_assertion
    anon39_Then@2
))))
(let ((anon32@33 (=> (and true
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.balance) 0))))))
  )(and 
    anon32@33_assertion
    anon32@34
))))
(let ((anon47_Else@2 (=> (and true
    (or (Node.Balanced $Heap@8 t@6) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) 0))))
  )(and 
    anon47_Else@2_assertion
    anon47_Else@3
))))
(let ((anon16@32 (=> (and true
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) Node.left)))))
  )(and 
    anon16@32_assertion
    anon16@33
))))
(let ((anon41_Else (=> (and true
    (Node.Balanced@canCall $Heap@15 t@6)
    (not $@condition_$8)
    (not (= (- 2) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 t@6 Node.balance)))
  )(and 
    anon41_Else@1_assertion
    anon41_Else@2
))))
(let ((anon32@32 (=> (and true
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) Node.left)))))
  )(and 
    anon32@32_assertion
    anon32@33
))))
(let ((anon47_Else (=> (and true
    (Node.Balanced@canCall $Heap@8 t@6)
    (not $@condition_$10)
    (not (= 2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance)))
  )(and 
    anon47_Else@1_assertion
    anon47_Else@2
))))
(let ((anon16@31 (=> (and true
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) Node.right)))))
  )(and 
    anon16@31_assertion
    anon16@32
))))
(let ((anon32@31 (=> (and true
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) Node.right)))))
  )(and 
    anon32@31_assertion
    anon32@32
))))
(let ((anon16@30 (=> (and true
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) null)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) Node.balance) 0))))))
  )(and 
    anon16@30_assertion
    anon16@31
))))
(let ((anon32@30 (=> (and true
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) null)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) Node.balance) 0))))))
  )(and 
    anon32@30_assertion
    anon32@31
))))
(let ((anon16@29 (=> (and true
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) Node.left)))))
  )(and 
    anon16@29_assertion
    anon16@30
))))
(let ((anon32@29 (=> (and true
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) Node.left)))))
  )(and 
    anon32@29_assertion
    anon32@30
))))
(let ((anon16@28 (=> (and true
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) null)) (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) Node.right)))))
  )(and 
    anon16@28_assertion
    anon16@29
))))
(let ((anon32@28 (=> (and true
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) null)) (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) Node.right)))))
  )(and 
    anon32@28_assertion
    anon32@29
))))
(let ((anon16@27 (=> (and true
    (=> (Node.Balanced@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (or (Node.Balanced $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) null)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) Node.balance) 0))))))
  )(and 
    anon16@27_assertion
    anon16@28
))))
(let ((anon32@27 (=> (and true
    (=> (Node.Balanced@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (or (Node.Balanced $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) null)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) Node.balance) 0))))))
  )(and 
    anon32@27_assertion
    anon32@28
))))
(let ((anon16@26 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (or (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)))))
  )(and 
    anon16@26_assertion
    anon16@27
))))
(let ((anon32@26 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (or (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right) null)) (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)))))
  )(and 
    anon32@26_assertion
    anon32@27
))))
(let ((anon16@25 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (or (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left)))))
  )(and 
    anon16@25_assertion
    anon16@26
))))
(let ((anon32@25 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (or (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left) null)) (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left)))))
  )(and 
    anon32@25_assertion
    anon32@26
))))
(let ((anon16@24 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (or (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.balance) (- (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.right)) (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.left))))))
  )(and 
    anon16@24_assertion
    anon16@25
))))
(let ((anon32@24 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (or (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.balance) (- (Node.Height $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.right)) (Node.Height $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.left))))))
  )(and 
    anon32@24_assertion
    anon32@25
))))
(let ((anon16@23 (=> (and true
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.balance) (- 2)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.balance) (- 1)))
  )(and 
    anon16@23_assertion
    anon16@24
))))
(let ((anon32@23 (=> (and true
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.balance) 2) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.balance) 1))
  )(and 
    anon32@23_assertion
    anon32@24
))))
(let ((anon16@22 (=> (and true
    (= (- 2) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 t@6 Node.balance))
  )(and 
    anon16@22_assertion
    anon16@23
))))
(let ((anon32@22 (=> (and true
    (= 2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 t@6 Node.balance))
  )(and 
    anon32@22_assertion
    anon32@23
))))
(let ((anon16@21 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@18 t@6) (or (Node.BalanceValid $Heap@18 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)))))
  )(and 
    anon16@21_assertion
    anon16@22
))))
(let ((anon32@21 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@11 t@6) (or (Node.BalanceValid $Heap@11 t@6) (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))
  )(and 
    anon32@21_assertion
    anon32@22
))))
(let ((anon16@20 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@18 t@6) (or (Node.BalanceValid $Heap@18 t@6) (Node.BalanceValid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))
  )(and 
    anon16@20_assertion
    anon16@21
))))
(let ((anon32@20 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@11 t@6) (or (Node.BalanceValid $Heap@11 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (Node.BalanceValid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left)))))
  )(and 
    anon32@20_assertion
    anon32@21
))))
(let ((anon16@19 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@18 t@6) (or (Node.BalanceValid $Heap@18 t@6) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 t@6 Node.balance) (- (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right)) (Node.Height $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))))
  )(and 
    anon16@19_assertion
    anon16@20
))))
(let ((anon32@19 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap@11 t@6) (or (Node.BalanceValid $Heap@11 t@6) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 t@6 Node.balance) (- (Node.Height $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)) (Node.Height $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left))))))
  )(and 
    anon32@19_assertion
    anon32@20
))))
(let ((anon16@18 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (forall( (|i#17_$19| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$19|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 t@6 Node.value) |i#17_$19|))))))
  )(and 
    anon16@18_assertion
    anon16@19
))))
(let ((anon32@18 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (forall( (|i#17_$25| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Contents) ($Box$Int$ |i#17_$25|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 t@6 Node.value) |i#17_$25|)))))
  )(and 
    anon32@18_assertion
    anon32@19
))))
(let ((anon16@17 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (forall( (|i#16_$20| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$20|)) (< |i#16_$20| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 t@6 Node.value))))))
  )(and 
    anon16@17_assertion
    anon16@18
))))
(let ((anon32@17 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (forall( (|i#16_$26| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$26|)) (< |i#16_$26| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 t@6 Node.value)))))))
  )(and 
    anon32@17_assertion
    anon32@18
))))
(let ((anon16@16 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@18 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))) (Node.Valid $Heap@18 t@6)))
  )(and 
    anon16@16_assertion
    anon16@17
))))
(let ((anon32@16 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))) (Node.Valid $Heap@11 t@6)))
  )(and 
    anon32@16_assertion
    anon32@17
))))
(let ((anon16@15 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))) (Node.Valid $Heap@18 t@6)))
  )(and 
    anon16@15_assertion
    anon16@16
))))
(let ((anon32@15 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))) (Node.Valid $Heap@11 t@6)))
  )(and 
    anon32@15_assertion
    anon32@16
))))
(let ((anon16@14 (=> (and true
    (= (= true $@bf_17) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))
    (= (= true $@bf_18) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right))))
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Repr)))))
  )(and 
    anon16@14_assertion
    anon16@15
))))
(let ((anon32@14 (=> (and true
    (= (= true $@bf_21) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left))))
    (= (= true $@bf_22) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Repr)))))
  )(and 
    anon32@14_assertion
    anon32@15
))))
(let ((anon16@13 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (Node.Valid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right))))
  )(and 
    anon16@13_assertion
    anon16@14
))))
(let ((anon32@13 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (Node.Valid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))))
  )(and 
    anon32@13_assertion
    anon32@14
))))
(let ((anon16@12 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (Node.Valid $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))))
  )(and 
    anon16@12_assertion
    anon16@13
))))
(let ((anon32@12 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (Node.Valid $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left))))
  )(and 
    anon32@12_assertion
    anon32@13
))))
(let ((anon16@11 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr)))))
  )(and 
    anon16@11_assertion
    anon16@12
))))
(let ((anon32@11 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr)) (Node.Valid $Heap@11 t@6)))
  )(and 
    anon32@11_assertion
    anon32@12
))))
(let ((anon16@10 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) Node.Repr) ($Box$ref$ t@6))))))
  )(and 
    anon16@10_assertion
    anon16@11
))))
(let ((anon32@10 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))
  )(and 
    anon32@10_assertion
    anon32@11
))))
(let ((anon16@9 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.right))))))
  )(and 
    anon16@9_assertion
    anon16@10
))))
(let ((anon32@9 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)))))
  )(and 
    anon32@9_assertion
    anon32@10
))))
(let ((anon16@8 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr)) (Node.Valid $Heap@18 t@6)))
  )(and 
    anon16@8_assertion
    anon16@9
))))
(let ((anon32@8 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr)))))
  )(and 
    anon32@8_assertion
    anon32@9
))))
(let ((anon16@7 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))
  )(and 
    anon16@7_assertion
    anon16@8
))))
(let ((anon32@7 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) Node.Repr) ($Box$ref$ t@6))))))
  )(and 
    anon32@7_assertion
    anon32@8
))))
(let ((anon16@6 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)))))
  )(and 
    anon16@6_assertion
    anon16@7
))))
(let ((anon32@6 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.left))))))
  )(and 
    anon32@6_assertion
    anon32@7
))))
(let ((anon16@5 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr) ($Box$ref$ null)))))
  )(and 
    anon16@5_assertion
    anon16@6
))))
(let ((anon32@5 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr) ($Box$ref$ null)))))
  )(and 
    anon32@5_assertion
    anon32@6
))))
(let ((anon16@4 (=> (and true
    (=> (Node.Valid@canCall $Heap@18 t@6) (or (Node.Valid $Heap@18 t@6) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@18 t@6 Node.Repr) ($Box$ref$ t@6))))
  )(and 
    anon16@4_assertion
    anon16@5
))))
(let ((anon32@4 (=> (and true
    (=> (Node.Valid@canCall $Heap@11 t@6) (or (Node.Valid $Heap@11 t@6) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@11 t@6 Node.Repr) ($Box$ref$ t@6))))
  )(and 
    anon32@4_assertion
    anon32@5
))))
(let ((anon16@3 (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left) null))
  )(and 
    anon16@3_assertion
    anon16@4
))))
(let ((anon32@3 (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right) null))
  )(and 
    anon32@3_assertion
    anon32@4
))))
(let ((anon16@1 (=> (and true
    (forall( (|$o_$53_$0| ref) (|$f_$44_$0| Field$Bool$))(=> (and (or (= t@6 |$o_$53_$0|) (= |$o_$53_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$53_$0| alloc) (not (= null |$o_$53_$0|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$53_$0| |$f_$44_$0|)))
    (forall( (|$o_$53_$1| ref) (|$f_$44_$1| Field$Int$))(=> (and (or (= t@6 |$o_$53_$1|) (= |$o_$53_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$53_$1| alloc) (not (= null |$o_$53_$1|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$53_$1| |$f_$44_$1|)))
    (forall( (|$o_$53_$2| ref) (|$f_$44_$2| Field$ref$))(=> (and (or (= t@6 |$o_$53_$2|) (= |$o_$53_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$53_$2| alloc) (not (= null |$o_$53_$2|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$53_$2| |$f_$44_$2|)))
    (forall( (|$o_$53_$3| ref) (|$f_$44_$3| Field$BoxType$))(=> (and (or (= t@6 |$o_$53_$3|) (= |$o_$53_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$53_$3| alloc) (not (= null |$o_$53_$3|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$53_$3| |$f_$44_$3|)))
    (forall( (|$o_$53_$4| ref) (|$f_$44_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= t@6 |$o_$53_$4|) (= |$o_$53_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@18 |$o_$53_$4| alloc) (not (= null |$o_$53_$4|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$53_$4| |$f_$44_$4|)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@18 t@6 Node.left)))
    (or (= call3formal@r@29@0 null) (and (= (dtype call3formal@r@29@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call3formal@r@29@0 alloc)))
  )
    anon16@3
)))
(let ((anon32@1 (=> (and true
    (forall( (|$o_$57_$0| ref) (|$f_$48_$0| Field$Bool$))(=> (and (or (= t@6 |$o_$57_$0|) (= |$o_$57_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$57_$0| alloc) (not (= null |$o_$57_$0|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$57_$0| |$f_$48_$0|)))
    (forall( (|$o_$57_$1| ref) (|$f_$48_$1| Field$Int$))(=> (and (or (= t@6 |$o_$57_$1|) (= |$o_$57_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$57_$1| alloc) (not (= null |$o_$57_$1|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$57_$1| |$f_$48_$1|)))
    (forall( (|$o_$57_$2| ref) (|$f_$48_$2| Field$ref$))(=> (and (or (= t@6 |$o_$57_$2|) (= |$o_$57_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$57_$2| alloc) (not (= null |$o_$57_$2|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$57_$2| |$f_$48_$2|)))
    (forall( (|$o_$57_$3| ref) (|$f_$48_$3| Field$BoxType$))(=> (and (or (= t@6 |$o_$57_$3|) (= |$o_$57_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$57_$3| alloc) (not (= null |$o_$57_$3|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$57_$3| |$f_$48_$3|)))
    (forall( (|$o_$57_$4| ref) (|$f_$48_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= t@6 |$o_$57_$4|) (= |$o_$57_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@11 |$o_$57_$4| alloc) (not (= null |$o_$57_$4|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$57_$4| |$f_$48_$4|)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right)))
    (or (= call3formal@r@34@0 null) (and (= (dtype call3formal@r@34@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call3formal@r@34@0 alloc)))
  )
    anon32@3
)))
(let ((anon16 (=> (and true
  )(and 
    anon16_assertion
    anon16@1
))))
(let ((anon32 (=> (and true
  )(and 
    anon32_assertion
    anon32@1
))))
(let ((anon42_Else (=> (and true
    (= $Heap@15 $Heap@18)
    (not $@condition_$9)
    (not (= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 call5formal@r@8@0 Node.balance)))
  )
    anon16
)))
(let ((anon42_Then@6 (=> (and true
    ($HeapSucc $Heap@15 $Heap@16)
    ($IsGoodHeap $Heap@16)
    ($IsGoodHeap $Heap@17)
    (= $Heap@17 $Heap@18)
    (= $Heap@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 t@6 Node.left call3formal@r@24@0))
    (= (= true $@bf_100) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right))))
    (= (= true $@bf_15) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.left))))
    (= (= true $@bf_16) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))
    (= (= true $@bf_99) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 call3formal@r@24@0 Node.balance) (+ (Node.Height $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right)) (* (- 1) (Node.Height $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left)))))
    (= (Node.Height@2 $Heap@15 n@70@0) (Node.Height@2 $Heap@16 call3formal@r@24@0))
    (= call3formal@r@24@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))
    (= class.Node (dtype call3formal@r@24@0))
    (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) null)) (and (and (Node.Balanced $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.right)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.balance) 0)))) (Node.Balanced $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.left))))
    (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) null)) (and (and (Node.Balanced $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.right)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.balance) 0)))) (Node.Balanced $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.left))))
    (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) null)) (Node.BalanceValid $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) null)) (Node.BalanceValid $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left))))
    (and (and (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@24@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.Repr) Set@Empty$BoxType$))) (and (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@24@0)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@24@0))))))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.Repr))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 call3formal@r@24@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) null)) (forall( (|i#16_$18| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$18|)) (< |i#16_$18| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 call3formal@r@24@0 Node.value)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) null)) (forall( (|i#17_$17| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$17|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 call3formal@r@24@0 Node.value) |i#17_$17|)))))
    (forall( (|$o_$52_$0| ref) (|$f_$43_$0| Field$Bool$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$52_$0| alloc) (not (= null |$o_$52_$0|))) (or (or (= n@70@0 |$o_$52_$0|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@16 |$o_$52_$0| |$f_$43_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$52_$0| |$f_$43_$0|))) (= |$o_$52_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@16 |$o_$52_$0| |$f_$43_$0|))))
    (forall( (|$o_$52_$1| ref) (|$f_$43_$1| Field$Int$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$52_$1| alloc) (not (= null |$o_$52_$1|))) (or (or (= n@70@0 |$o_$52_$1|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 |$o_$52_$1| |$f_$43_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 |$o_$52_$1| |$f_$43_$1|))) (= |$o_$52_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 |$o_$52_$1| |$f_$43_$1|))))
    (forall( (|$o_$52_$2| ref) (|$f_$43_$2| Field$ref$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$52_$2| alloc) (not (= null |$o_$52_$2|))) (or (or (= n@70@0 |$o_$52_$2|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 |$o_$52_$2| |$f_$43_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 |$o_$52_$2| |$f_$43_$2|))) (= |$o_$52_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 |$o_$52_$2| |$f_$43_$2|))))
    (forall( (|$o_$52_$3| ref) (|$f_$43_$3| Field$BoxType$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$52_$3| alloc) (not (= null |$o_$52_$3|))) (or (or (= n@70@0 |$o_$52_$3|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@16 |$o_$52_$3| |$f_$43_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@15 |$o_$52_$3| |$f_$43_$3|))) (= |$o_$52_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@16 |$o_$52_$3| |$f_$43_$3|))))
    (forall( (|$o_$52_$4| ref) (|$f_$43_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$52_$4| alloc) (not (= null |$o_$52_$4|))) (or (or (= n@70@0 |$o_$52_$4|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 |$o_$52_$4| |$f_$43_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@15 |$o_$52_$4| |$f_$43_$4|))) (= |$o_$52_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 |$o_$52_$4| |$f_$43_$4|))))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@16 call3formal@r@24@0 alloc)
    (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Repr) ($Box$ref$ call3formal@r@24@0))
    (Node.Balanced $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left))
    (Node.Balanced $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right))
    (Node.Balanced@canCall $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left))
    (Node.Balanced@canCall $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right))
    (Node.BalanceValid $Heap@16 call3formal@r@24@0)
    (Node.BalanceValid@canCall $Heap@16 call3formal@r@24@0)
    (Node.Valid $Heap@15 n@70@0)
    (Node.Valid $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left))
    (Node.Valid $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right))
    (Node.Valid $Heap@16 call3formal@r@24@0)
    (Node.Valid@canCall $Heap@16 call3formal@r@24@0)
    (not (= null call3formal@r@24@0))
    (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Repr) ($Box$ref$ null)))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 call3formal@r@24@0 Node.balance) (- 2)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 call3formal@r@24@0 Node.balance) (- 1)))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@15 n@70@0 Node.Contents))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@16 call3formal@r@24@0 Node.value))) (ite $@bf_99 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite $@bf_100 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.Contents) Set@Empty$BoxType$)))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@15 n@70@0 Node.Repr))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 call3formal@r@24@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@24@0)) (ite $@bf_99 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite $@bf_100 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@16 call3formal@r@24@0 Node.right) Node.Repr) Set@Empty$BoxType$)))
  )
    anon16
)))
(let ((anon48_Else (=> (and true
    (= $Heap@11 $Heap@8)
    (= call5formal@r@8@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@11 t@6 Node.right))
    (not $@condition_$11)
    (not (= (- 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@11 call5formal@r@8@0 Node.balance)))
  )
    anon32
)))
(let ((anon48_Then@6 (=> (and true
    ($HeapSucc $Heap@8 $Heap@9)
    ($IsGoodHeap $Heap@10)
    ($IsGoodHeap $Heap@9)
    (= $Heap@10 $Heap@11)
    (= $Heap@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 t@6 Node.right call3formal@r@19@0))
    (= (= true $@bf_107) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left))))
    (= (= true $@bf_108) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right))))
    (= (= true $@bf_19) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))
    (= (= true $@bf_20) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.right))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 call3formal@r@19@0 Node.balance) (+ (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right)) (* (- 1) (Node.Height $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left)))))
    (= (Node.Height@2 $Heap@8 n@79@0) (Node.Height@2 $Heap@9 call3formal@r@19@0))
    (= call3formal@r@19@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))
    (= class.Node (dtype call3formal@r@19@0))
    (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) null)) (and (and (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.right)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.balance) 0)))) (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.left))))
    (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) null)) (and (and (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.right)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.balance) 0)))) (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.left))))
    (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) null)) (Node.BalanceValid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) null)) (Node.BalanceValid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left))))
    (and (and (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@19@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.Repr) Set@Empty$BoxType$))) (and (and (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.Repr) ($Box$ref$ call3formal@r@19@0)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.Repr) ($Box$ref$ call3formal@r@19@0))))))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.Repr))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 call3formal@r@19@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) null)) (forall( (|i#16_$24| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$24|)) (< |i#16_$24| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 call3formal@r@19@0 Node.value)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) null)) (forall( (|i#17_$23| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$23|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 call3formal@r@19@0 Node.value) |i#17_$23|)))))
    (forall( (|$o_$56_$0| ref) (|$f_$47_$0| Field$Bool$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$56_$0| alloc) (not (= null |$o_$56_$0|))) (or (or (= n@79@0 |$o_$56_$0|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$56_$0| |$f_$47_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$56_$0| |$f_$47_$0|))) (= |$o_$56_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 |$o_$56_$0| |$f_$47_$0|))))
    (forall( (|$o_$56_$1| ref) (|$f_$47_$1| Field$Int$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$56_$1| alloc) (not (= null |$o_$56_$1|))) (or (or (= n@79@0 |$o_$56_$1|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 |$o_$56_$1| |$f_$47_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 |$o_$56_$1| |$f_$47_$1|))) (= |$o_$56_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 |$o_$56_$1| |$f_$47_$1|))))
    (forall( (|$o_$56_$2| ref) (|$f_$47_$2| Field$ref$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$56_$2| alloc) (not (= null |$o_$56_$2|))) (or (or (= n@79@0 |$o_$56_$2|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 |$o_$56_$2| |$f_$47_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 |$o_$56_$2| |$f_$47_$2|))) (= |$o_$56_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 |$o_$56_$2| |$f_$47_$2|))))
    (forall( (|$o_$56_$3| ref) (|$f_$47_$3| Field$BoxType$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$56_$3| alloc) (not (= null |$o_$56_$3|))) (or (or (= n@79@0 |$o_$56_$3|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@9 |$o_$56_$3| |$f_$47_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@8 |$o_$56_$3| |$f_$47_$3|))) (= |$o_$56_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@9 |$o_$56_$3| |$f_$47_$3|))))
    (forall( (|$o_$56_$4| ref) (|$f_$47_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$56_$4| alloc) (not (= null |$o_$56_$4|))) (or (or (= n@79@0 |$o_$56_$4|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 |$o_$56_$4| |$f_$47_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 |$o_$56_$4| |$f_$47_$4|))) (= |$o_$56_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 |$o_$56_$4| |$f_$47_$4|))))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@9 call3formal@r@19@0 alloc)
    (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Repr) ($Box$ref$ call3formal@r@19@0))
    (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left))
    (Node.Balanced $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right))
    (Node.Balanced@canCall $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left))
    (Node.Balanced@canCall $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right))
    (Node.BalanceValid $Heap@9 call3formal@r@19@0)
    (Node.BalanceValid@canCall $Heap@9 call3formal@r@19@0)
    (Node.Valid $Heap@8 n@79@0)
    (Node.Valid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left))
    (Node.Valid $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right))
    (Node.Valid $Heap@9 call3formal@r@19@0)
    (Node.Valid@canCall $Heap@9 call3formal@r@19@0)
    (not (= null call3formal@r@19@0))
    (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Repr) ($Box$ref$ null)))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 call3formal@r@19@0 Node.balance) 2) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 call3formal@r@19@0 Node.balance) 1))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Contents) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 n@79@0 Node.Contents))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@9 call3formal@r@19@0 Node.value))) (ite $@bf_107 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite $@bf_108 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.Contents) Set@Empty$BoxType$)))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@8 n@79@0 Node.Repr))
    (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 call3formal@r@19@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call3formal@r@19@0)) (ite $@bf_107 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite $@bf_108 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@9 call3formal@r@19@0 Node.right) Node.Repr) Set@Empty$BoxType$)))
  )
    anon32
)))
(let ((anon42_Then@4 (=> (and true
    (forall( (|$o_$51_$0| ref) (|$f_$42_$0| Field$Bool$))(=> (and (or (= n@70@0 |$o_$51_$0|) (= |$o_$51_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$51_$0| alloc) (not (= null |$o_$51_$0|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$51_$0| |$f_$42_$0|)))
    (forall( (|$o_$51_$1| ref) (|$f_$42_$1| Field$Int$))(=> (and (or (= n@70@0 |$o_$51_$1|) (= |$o_$51_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$51_$1| alloc) (not (= null |$o_$51_$1|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$51_$1| |$f_$42_$1|)))
    (forall( (|$o_$51_$2| ref) (|$f_$42_$2| Field$ref$))(=> (and (or (= n@70@0 |$o_$51_$2|) (= |$o_$51_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$51_$2| alloc) (not (= null |$o_$51_$2|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$51_$2| |$f_$42_$2|)))
    (forall( (|$o_$51_$3| ref) (|$f_$42_$3| Field$BoxType$))(=> (and (or (= n@70@0 |$o_$51_$3|) (= |$o_$51_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$51_$3| alloc) (not (= null |$o_$51_$3|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$51_$3| |$f_$42_$3|)))
    (forall( (|$o_$51_$4| ref) (|$f_$42_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= n@70@0 |$o_$51_$4|) (= |$o_$51_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 n@70@0 Node.right))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@15 |$o_$51_$4| alloc) (not (= null |$o_$51_$4|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$51_$4| |$f_$42_$4|)))
    (or (= call3formal@r@24@0 null) (and (= (dtype call3formal@r@24@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call3formal@r@24@0 alloc)))
  )(and 
    anon42_Then@5_assertion
    anon42_Then@6
))))
(let ((anon48_Then@4 (=> (and true
    (forall( (|$o_$55_$0| ref) (|$f_$46_$0| Field$Bool$))(=> (and (or (= n@79@0 |$o_$55_$0|) (= |$o_$55_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$55_$0| alloc) (not (= null |$o_$55_$0|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$55_$0| |$f_$46_$0|)))
    (forall( (|$o_$55_$1| ref) (|$f_$46_$1| Field$Int$))(=> (and (or (= n@79@0 |$o_$55_$1|) (= |$o_$55_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$55_$1| alloc) (not (= null |$o_$55_$1|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$55_$1| |$f_$46_$1|)))
    (forall( (|$o_$55_$2| ref) (|$f_$46_$2| Field$ref$))(=> (and (or (= n@79@0 |$o_$55_$2|) (= |$o_$55_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$55_$2| alloc) (not (= null |$o_$55_$2|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$55_$2| |$f_$46_$2|)))
    (forall( (|$o_$55_$3| ref) (|$f_$46_$3| Field$BoxType$))(=> (and (or (= n@79@0 |$o_$55_$3|) (= |$o_$55_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$55_$3| alloc) (not (= null |$o_$55_$3|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$55_$3| |$f_$46_$3|)))
    (forall( (|$o_$55_$4| ref) (|$f_$46_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (or (= n@79@0 |$o_$55_$4|) (= |$o_$55_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 n@79@0 Node.left))) (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@8 |$o_$55_$4| alloc) (not (= null |$o_$55_$4|)))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$55_$4| |$f_$46_$4|)))
    (or (= call3formal@r@19@0 null) (and (= (dtype call3formal@r@19@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call3formal@r@19@0 alloc)))
  )(and 
    anon48_Then@5_assertion
    anon48_Then@6
))))
(let ((anon42_Then (=> (and true
    $@condition_$9
    (= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 n@70@0 Node.balance))
    (= n@70@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left))
  )(and 
    anon42_Then@3_assertion
    anon42_Then@4
))))
(let ((anon48_Then (=> (and true
    $@condition_$11
    (= (- 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 n@79@0 Node.balance))
    (= n@79@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right))
  )(and 
    anon48_Then@3_assertion
    anon48_Then@4
))))
(let ((anon41_Then@7 (=> (and true
  )
    (and anon42_Else anon42_Then)
)))
(let ((anon47_Then@7 (=> (and true
  )
    (and anon48_Else anon48_Then)
)))
(let ((anon41_Then@5 (=> (and true
    (Node.Balanced $Heap@15 call5formal@r@8@0)
  )
    anon41_Then@7
)))
(let ((anon47_Then@5 (=> (and true
    (Node.Balanced $Heap@8 call5formal@r@8@0)
  )
    anon47_Then@7
)))
(let ((anon41_Then@4 (=> (and true
    (or (Node.Balanced $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 call5formal@r@8@0 Node.right)) (Node.Balanced $Heap@15 call5formal@r@8@0))
  )(and 
    anon41_Then@4_assertion
    anon41_Then@5
))))
(let ((anon47_Then@4 (=> (and true
    (or (Node.Balanced $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 call5formal@r@8@0 Node.right)) (Node.Balanced $Heap@8 call5formal@r@8@0))
  )(and 
    anon47_Then@4_assertion
    anon47_Then@5
))))
(let ((anon41_Then@3 (=> (and true
    (or (Node.Balanced $Heap@15 call5formal@r@8@0) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 call5formal@r@8@0 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 call5formal@r@8@0 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 call5formal@r@8@0 Node.balance) 0))))
  )(and 
    anon41_Then@3_assertion
    anon41_Then@4
))))
(let ((anon47_Then@3 (=> (and true
    (or (Node.Balanced $Heap@8 call5formal@r@8@0) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 call5formal@r@8@0 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 call5formal@r@8@0 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 call5formal@r@8@0 Node.balance) 0))))
  )(and 
    anon47_Then@3_assertion
    anon47_Then@4
))))
(let ((anon41_Then@2 (=> (and true
    (Node.Balanced@canCall $Heap@15 n@69@0)
    (Node.BalanceValid $Heap@15 n@69@0)
    (Node.Valid $Heap@15 n@69@0)
  )(and 
    anon41_Then@2_assertion
    anon41_Then@3
))))
(let ((anon47_Then@2 (=> (and true
    (Node.Balanced@canCall $Heap@8 n@78@0)
    (Node.BalanceValid $Heap@8 n@78@0)
    (Node.Valid $Heap@8 n@78@0)
  )(and 
    anon47_Then@2_assertion
    anon47_Then@3
))))
(let ((anon41_Then (=> (and true
    $@condition_$8
    (= (- 2) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 t@6 Node.balance))
    (= n@69@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left))
  )(and 
    anon41_Then@1_assertion
    anon41_Then@2
))))
(let ((anon47_Then (=> (and true
    $@condition_$10
    (= 2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance))
    (= n@78@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right))
  )(and 
    anon47_Then@1_assertion
    anon47_Then@2
))))
(let ((anon12@7 (=> (and true
    (Node.BalanceValid $Heap@15 t@6)
  )
    (and anon41_Else anon41_Then)
)))
(let ((anon28@7 (=> (and true
    (Node.BalanceValid $Heap@8 t@6)
  )
    (and anon47_Else anon47_Then)
)))
(let ((anon12@6 (=> (and true
    (or (Node.BalanceValid $Heap@15 t@6) (Node.BalanceValid $Heap@15 call5formal@r@8@0))
  )(and 
    anon12@6_assertion
    anon12@7
))))
(let ((anon28@6 (=> (and true
    (or (Node.BalanceValid $Heap@8 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) null)) (Node.BalanceValid $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left))))
  )(and 
    anon28@6_assertion
    anon28@7
))))
(let ((anon12@5 (=> (and true
    (= call5formal@r@8@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.left))
    (or (Node.BalanceValid $Heap@15 t@6) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@15 t@6 Node.balance) (- (Node.Height $Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@15 t@6 Node.right)) (Node.Height $Heap@15 call5formal@r@8@0))))
  )(and 
    anon12@5_assertion
    anon12@6
))))
(let ((anon28@5 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.left))
    (= call5formal@r@8@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@8 t@6 Node.right))
    (or (Node.BalanceValid $Heap@8 t@6) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@8 t@6 Node.balance) (- (Node.Height $Heap@8 call5formal@r@8@0) (Node.Height $Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left)))))
  )(and 
    anon28@5_assertion
    anon28@6
))))
(let ((anon12@4 (=> (and true
    (Node.BalanceValid@canCall $Heap@15 t@6)
    (Node.Valid $Heap@15 t@6)
  )(and 
    anon12@4_assertion
    anon12@5
))))
(let ((anon28@4 (=> (and true
    (Node.BalanceValid@canCall $Heap@8 t@6)
    (Node.Valid $Heap@8 t@6)
  )(and 
    anon28@4_assertion
    anon28@5
))))
(let ((anon12@2 (=> (and true
    ($IsGoodHeap $Heap@15)
    (= $Heap@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.balance $rhs@6@0))
    (= $rhs@6@0 (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.balance) (- 1)))
    (= (- 1) (* (- 1) 1))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.balance)
  )(and 
    anon12@3_assertion
    anon12@4
))))
(let ((anon28@2 (=> (and true
    ($IsGoodHeap $Heap@8)
    (= $Heap@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.balance $rhs@13@0))
    (= $rhs@13@0 (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.balance) call6formal@deltaH@9@0))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 t@6 Node.balance)
  )(and 
    anon28@3_assertion
    anon28@4
))))
(let ((anon12 (=> (and true
    (= (= true $@bf_97) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.balance) 0))
    (= (ite (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.balance) 0) 1 0) deltaH@9@1)
    (= deltaH@9@1 (ite $@bf_97 1 0))
  )(and 
    anon12@1_assertion
    anon12@2
))))
(let ((anon28 (=> (and true
    (= (= true $@bf_98) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.balance) 0))
    (= (ite (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.balance) 0) 1 0) deltaH@9@0)
    (= deltaH@9@0 (ite $@bf_98 1 0))
  )(and 
    anon28@1_assertion
    anon28@2
))))
(let ((anon40_Else (=> (and true
    (not $@condition_$5)
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.balance)))
  )
    anon12
)))
(let ((anon40_Then (=> (and true
    $@condition_$5
    (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.balance))
  )
    anon12
)))
(let ((anon46_Else (=> (and true
    (not $@condition_$7)
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 t@6 Node.balance)))
  )
    anon28
)))
(let ((anon46_Then (=> (and true
    $@condition_$7
    (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.balance))
  )
    anon28
)))
(let ((anon39_Else (=> (and true
    (not $@condition_$4)
    (not (= 0 call6formal@deltaH@9@0))
  )
    (and anon40_Else anon40_Then)
)))
(let ((anon45_Else (=> (and true
    (not $@condition_$6)
    (not (= 0 call6formal@deltaH@9@0))
  )
    (and anon46_Else anon46_Then)
)))
(let ((anon6@18 (=> (and true
    (Node.Valid $Heap@14 t@6)
  )
    (and anon39_Else anon39_Then)
)))
(let ((anon22@18 (=> (and true
    (Node.Valid $Heap@7 t@6)
  )
    (and anon45_Else anon45_Then)
)))
(let ((anon6@17 (=> (and true
    (or (Node.Valid $Heap@14 t@6) (forall( (|i#16_$15| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$15|)) (< |i#16_$15| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.value)))))
  )(and 
    anon6@17_assertion
    anon6@18
))))
(let ((anon22@17 (=> (and true
    (or (Node.Valid $Heap@7 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) null)) (forall( (|i#16_$16| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) Node.Contents) ($Box$Int$ |i#16_$16|)) (< |i#16_$16| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.value))))))
  )(and 
    anon22@17_assertion
    anon22@18
))))
(let ((anon6@16 (=> (and true
    (or (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@14 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))) (Node.Valid $Heap@14 t@6))
  )(and 
    anon6@16_assertion
    anon6@17
))))
(let ((anon22@16 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 t@6 Node.value) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.value))
    (or (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@7 t@6 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) Node.Contents) Set@Empty$BoxType$))) (Node.Valid $Heap@7 t@6))
  )(and 
    anon22@16_assertion
    anon22@17
))))
(let ((anon6@15 (=> (and true
    (not (= call5formal@r@8@0 null))
    (or (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))) (Node.Valid $Heap@14 t@6))
  )(and 
    anon6@15_assertion
    anon6@16
))))
(let ((anon22@15 (=> (and true
    (not (= call5formal@r@8@0 null))
    (or (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right) Node.Repr) Set@Empty$BoxType$))) (Node.Valid $Heap@7 t@6))
  )(and 
    anon22@15_assertion
    anon22@16
))))
(let ((anon6@14 (=> (and true
    (= (= true $@bf_11) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left))))
    (= (= true $@bf_12) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right))))
    (= true $@bf_11)
    (or (Node.Valid $Heap@14 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 call5formal@r@8@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Repr))))
  )(and 
    anon6@14_assertion
    anon6@15
))))
(let ((anon22@14 (=> (and true
    (= (= true $@bf_13) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left))))
    (= (= true $@bf_14) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right))))
    (= true $@bf_14)
    (or (Node.Valid $Heap@7 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) null)) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 call5formal@r@8@0 Node.Repr))))
  )(and 
    anon22@14_assertion
    anon22@15
))))
(let ((anon6@13 (=> (and true
    (or (Node.Valid $Heap@14 t@6) (Node.Valid $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right)))
  )(and 
    anon6@13_assertion
    anon6@14
))))
(let ((anon22@13 (=> (and true
    (or (Node.Valid $Heap@7 t@6) (Node.Valid $Heap@7 call5formal@r@8@0))
  )(and 
    anon22@13_assertion
    anon22@14
))))
(let ((anon6@12 (=> (and true
    (or (Node.Valid $Heap@14 t@6) (Node.Valid $Heap@14 call5formal@r@8@0))
  )(and 
    anon6@12_assertion
    anon6@13
))))
(let ((anon22@12 (=> (and true
    (or (Node.Valid $Heap@7 t@6) (Node.Valid $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left)))
  )(and 
    anon22@12_assertion
    anon22@13
))))
(let ((anon6@11 (=> (and true
    (or (Node.Valid $Heap@14 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr))))
  )(and 
    anon6@11_assertion
    anon6@12
))))
(let ((anon22@11 (=> (and true
    (or (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 call5formal@r@8@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr)) (Node.Valid $Heap@7 t@6))
  )(and 
    anon22@11_assertion
    anon22@12
))))
(let ((anon6@10 (=> (and true
    (or (Node.Valid $Heap@14 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) Node.Repr) ($Box$ref$ t@6)))))
  )(and 
    anon6@10_assertion
    anon6@11
))))
(let ((anon22@10 (=> (and true
    (or (Node.Valid $Heap@7 t@6) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 call5formal@r@8@0 Node.Repr) ($Box$ref$ t@6))))
  )(and 
    anon22@10_assertion
    anon22@11
))))
(let ((anon6@9 (=> (and true
    (or (Node.Valid $Heap@14 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.right)))))
  )(and 
    anon6@9_assertion
    anon6@10
))))
(let ((anon22@9 (=> (and true
    (= call5formal@r@8@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.right))
    (or (Node.Valid $Heap@7 t@6) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr) ($Box$ref$ call5formal@r@8@0)))
  )(and 
    anon22@9_assertion
    anon22@10
))))
(let ((anon6@8 (=> (and true
    (or (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 call5formal@r@8@0 Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr)) (Node.Valid $Heap@14 t@6))
  )(and 
    anon6@8_assertion
    anon6@9
))))
(let ((anon22@8 (=> (and true
    (or (Node.Valid $Heap@7 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr))))
  )(and 
    anon22@8_assertion
    anon22@9
))))
(let ((anon6@7 (=> (and true
    (or (Node.Valid $Heap@14 t@6) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 call5formal@r@8@0 Node.Repr) ($Box$ref$ t@6))))
  )(and 
    anon6@7_assertion
    anon6@8
))))
(let ((anon22@7 (=> (and true
    (or (Node.Valid $Heap@7 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) Node.Repr) ($Box$ref$ t@6)))))
  )(and 
    anon22@7_assertion
    anon22@8
))))
(let ((anon6@6 (=> (and true
    (= call5formal@r@8@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@14 t@6 Node.left))
    (or (Node.Valid $Heap@14 t@6) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr) ($Box$ref$ call5formal@r@8@0)))
  )(and 
    anon6@6_assertion
    anon6@7
))))
(let ((anon22@6 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@7 t@6 Node.left))
    (or (Node.Valid $Heap@7 t@6) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left)))))
  )(and 
    anon22@6_assertion
    anon22@7
))))
(let ((anon6@5 (=> (and true
    (or (Node.Valid $Heap@14 t@6) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr) ($Box$ref$ null))))
  )(and 
    anon6@5_assertion
    anon6@6
))))
(let ((anon22@5 (=> (and true
    (or (Node.Valid $Heap@7 t@6) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr) ($Box$ref$ null))))
  )(and 
    anon22@5_assertion
    anon22@6
))))
(let ((anon6@4 (=> (and true
    (or (Node.Valid $Heap@14 t@6) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@14 t@6 Node.Repr) ($Box$ref$ t@6)))
  )(and 
    anon6@4_assertion
    anon6@5
))))
(let ((anon22@4 (=> (and true
    (or (Node.Valid $Heap@7 t@6) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@7 t@6 Node.Repr) ($Box$ref$ t@6)))
  )(and 
    anon22@4_assertion
    anon22@5
))))
(let ((anon6@2 (=> (and true
    ($IsGoodHeap $Heap@14)
    (= $Heap@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 t@6 Node.Contents $rhs@3@0))
    (= $rhs@3@0 (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@13 t@6 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Contents)
    (Node.Valid@canCall $Heap@14 t@6)
  )(and 
    anon6@3_assertion
    anon6@4
))))
(let ((anon22@2 (=> (and true
    ($IsGoodHeap $Heap@7)
    (= $Heap@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 t@6 Node.Contents $rhs@12@0))
    (= $rhs@12@0 (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@6 t@6 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Contents)
    (Node.Valid@canCall $Heap@7 t@6)
  )(and 
    anon22@3_assertion
    anon22@4
))))
(let ((anon6 (=> (and true
    ($IsGoodHeap $Heap@13)
    (= $Heap@13 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@3 t@6 Node.Repr $rhs@2@0))
    (= $rhs@2@0 (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@3 call5formal@r@8@0 Node.Repr)) (ite $@bf_95 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) Node.Repr) Set@Empty$BoxType$)))
    (= (= true $@bf_95) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right))))
    (= (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.left) Node.Repr)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right) Node.Repr) Set@Empty$BoxType$)) $rhs@2@0)
  )(and 
    anon6@1_assertion
    anon6@2
))))
(let ((anon22 (=> (and true
    ($IsGoodHeap $Heap@6)
    (= $Heap@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@5 t@6 Node.Repr $rhs@11@0))
    (= $rhs@11@0 (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@5 call5formal@r@8@0 Node.Repr)) (ite $@bf_96 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)))
    (= (= true $@bf_96) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left))))
    (= (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ t@6)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.right) Node.Repr)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left) Node.Repr) Set@Empty$BoxType$)) $rhs@11@0)
  )(and 
    anon22@1_assertion
    anon22@2
))))
(let ((anon38_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right))
    (not $@condition_$1)
    (not (= t@6 null))
  )
    anon6
)))
(let ((anon38_Then (=> (and true
    $@condition_$1
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 t@6 Node.right) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.right))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 t@6 Node.right)))
  )
    anon6
)))
(let ((anon44_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left))
    (not $@condition_$3)
    (not (= t@6 null))
  )
    anon22
)))
(let ((anon44_Then (=> (and true
    $@condition_$3
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.left))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.left)))
  )
    anon22
)))
(let ((anon37_Then@46 (=> (and true
    (= call5formal@r@8@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@3 t@6 Node.left))
  )
    (and anon38_Else anon38_Then)
)))
(let ((anon43_Then@46 (=> (and true
    (= call5formal@r@8@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@5 t@6 Node.right))
  )
    (and anon44_Else anon44_Then)
)))
(let ((anon37_Then@44 (=> (and true
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Repr)
  )
    anon37_Then@46
)))
(let ((anon43_Then@44 (=> (and true
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 t@6 Node.Repr)
  )
    anon43_Then@46
)))
(let ((anon37_Then@42 (=> (and true
    ($HeapSucc $Heap $Heap@2)
    ($IsGoodHeap $Heap@2)
    ($IsGoodHeap $Heap@3)
    (= $Heap@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 t@6 Node.left call5formal@r@8@0))
    (= (= true $@bf_88) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left))))
    (= (= true $@bf_89) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right))))
    (= call6formal@deltaH@9@0 (+ (Node.Height@2 $Heap@2 call5formal@r@8@0) (* (- 1) (Node.Height@2 $Heap t@63@0))))
    (=> (= t@63@0 null) (forall( (|$o_$45| ref))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Repr) ($Box$ref$ |$o_$45|)) (not (= null |$o_$45|))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$45| alloc)))))
    (=> (= t@63@0 null) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
    (=> (and (= call6formal@deltaH@9@0 1) (not (= t@63@0 null))) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0 Node.balance) 0)))
    (=> (Node.Balanced@canCall $Heap t@63@0) (or (Node.Balanced $Heap t@63@0) (=> (not (= t@63@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.left)))))
    (=> (not (= t@63@0 null)) (forall( (|$o_$44| ref))(=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Repr) ($Box$ref$ |$o_$44|)) (not (= null |$o_$44|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$44|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$44| alloc)))))
    (=> (not (= t@63@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Contents) (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7)))))
    (and (= (dtype call5formal@r@8@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 call5formal@r@8@0 alloc))
    (and (and (= (- (Node.Height $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right)) (Node.Height $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0 Node.balance)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) null)) (Node.BalanceValid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) null)) (Node.BalanceValid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right))))
    (and (and (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call5formal@r@8@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) Node.Repr) Set@Empty$BoxType$))) (and (and (Node.Valid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right)) (and (Node.Valid $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left)) (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Repr) ($Box$ref$ call5formal@r@8@0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) Node.Repr) ($Box$ref$ call5formal@r@8@0))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) Node.Repr) ($Box$ref$ call5formal@r@8@0))))))))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) Node.Repr))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 call5formal@r@8@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) null)) (forall( (|i#16_$9| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$9|)) (< |i#16_$9| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0 Node.value)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) null)) (forall( (|i#17_$8| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$8|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0 Node.value) |i#17_$8|)))))
    (and (and (Node.Balanced $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.right)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 call5formal@r@8@0 Node.balance) 0)))) (Node.Balanced $Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 call5formal@r@8@0 Node.left)))
    (forall( (|$o_$46_$0| ref) (|$f_$39_$0| Field$Bool$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$0| alloc) (not (= null |$o_$46_$0|))) (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$46_$0|)) (not (= t@63@0 null))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$0| |$f_$39_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 |$o_$46_$0| |$f_$39_$0|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@2 |$o_$46_$0| |$f_$39_$0|))))
    (forall( (|$o_$46_$1| ref) (|$f_$39_$1| Field$Int$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$1| alloc) (not (= null |$o_$46_$1|))) (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$46_$1|)) (not (= t@63@0 null))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap |$o_$46_$1| |$f_$39_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 |$o_$46_$1| |$f_$39_$1|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@2 |$o_$46_$1| |$f_$39_$1|))))
    (forall( (|$o_$46_$2| ref) (|$f_$39_$2| Field$ref$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$2| alloc) (not (= null |$o_$46_$2|))) (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$46_$2|)) (not (= t@63@0 null))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$46_$2| |$f_$39_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 |$o_$46_$2| |$f_$39_$2|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@2 |$o_$46_$2| |$f_$39_$2|))))
    (forall( (|$o_$46_$3| ref) (|$f_$39_$3| Field$BoxType$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$3| alloc) (not (= null |$o_$46_$3|))) (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$46_$3|)) (not (= t@63@0 null))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$46_$3| |$f_$39_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@2 |$o_$46_$3| |$f_$39_$3|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@2 |$o_$46_$3| |$f_$39_$3|))))
    (forall( (|$o_$46_$4| ref) (|$f_$39_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$46_$4| alloc) (not (= null |$o_$46_$4|))) (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$46_$4|)) (not (= t@63@0 null))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap |$o_$46_$4| |$f_$39_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 |$o_$46_$4| |$f_$39_$4|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@2 |$o_$46_$4| |$f_$39_$4|))))
    (Node.Balanced $Heap@2 call5formal@r@8@0)
    (Node.Balanced@canCall $Heap@2 call5formal@r@8@0)
    (Node.BalanceValid $Heap@2 call5formal@r@8@0)
    (Node.BalanceValid@canCall $Heap@2 call5formal@r@8@0)
    (Node.Valid $Heap@2 call5formal@r@8@0)
    (Node.Valid@canCall $Heap@2 call5formal@r@8@0)
    (not (= null call5formal@r@8@0))
    (or (= call6formal@deltaH@9@0 1) (= call6formal@deltaH@9@0 0))
    (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ call5formal@r@8@0)) (not (= t@63@0 null))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call5formal@r@8@0 alloc)))
  )(and 
    anon37_Then@43_assertion
    anon37_Then@44
))))
(let ((anon43_Then@42 (=> (and true
    ($HeapSucc $Heap $Heap@4)
    ($IsGoodHeap $Heap@4)
    ($IsGoodHeap $Heap@5)
    (= $Heap@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 t@6 Node.right call5formal@r@8@0))
    (= (= true $@bf_92) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left))))
    (= (= true $@bf_93) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right))))
    (= call6formal@deltaH@9@0 (+ (Node.Height@2 $Heap@4 call5formal@r@8@0) (* (- 1) (Node.Height@2 $Heap t@74@0))))
    (=> (= t@74@0 null) (forall( (|$o_$49| ref))(=> (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ |$o_$49|)) (not (= null |$o_$49|))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$49| alloc)))))
    (=> (= t@74@0 null) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7))))
    (=> (and (= call6formal@deltaH@9@0 1) (not (= t@74@0 null))) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) 0)))
    (=> (Node.Balanced@canCall $Heap t@74@0) (or (Node.Balanced $Heap t@74@0) (=> (not (= t@74@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.left)))))
    (=> (not (= t@74@0 null)) (forall( (|$o_$48| ref))(=> (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ |$o_$48|)) (not (= null |$o_$48|))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$48|)))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$48| alloc)))))
    (=> (not (= t@74@0 null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Contents) (Set@Union$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Contents) (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ key@7)))))
    (and (= (dtype call5formal@r@8@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@4 call5formal@r@8@0 alloc))
    (and (and (= (- (Node.Height $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right)) (Node.Height $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (Node.BalanceValid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (Node.BalanceValid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right))))
    (and (and (and (and (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ call5formal@r@8@0)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr) Set@Empty$BoxType$))) (and (and (Node.Valid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right)) (and (Node.Valid $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)) (and (and (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ call5formal@r@8@0)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ null)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) ($Box$ref$ call5formal@r@8@0))))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (and (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr)) (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right))) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr) ($Box$ref$ call5formal@r@8@0))))))))) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Repr))))) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 call5formal@r@8@0 Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Contents) Set@Empty$BoxType$)))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) null)) (forall( (|i#16_$13| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left) Node.Contents) ($Box$Int$ |i#16_$13|)) (< |i#16_$13| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.value)))))) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) null)) (forall( (|i#17_$12| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right) Node.Contents) ($Box$Int$ |i#17_$12|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.value) |i#17_$12|)))))
    (and (and (Node.Balanced $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.right)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 call5formal@r@8@0 Node.balance) 0)))) (Node.Balanced $Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 call5formal@r@8@0 Node.left)))
    (forall( (|$o_$50_$0| ref) (|$f_$41_$0| Field$Bool$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$0| alloc) (not (= null |$o_$50_$0|))) (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$50_$0|)) (not (= t@74@0 null))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$0| |$f_$41_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@4 |$o_$50_$0| |$f_$41_$0|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap@4 |$o_$50_$0| |$f_$41_$0|))))
    (forall( (|$o_$50_$1| ref) (|$f_$41_$1| Field$Int$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$1| alloc) (not (= null |$o_$50_$1|))) (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$50_$1|)) (not (= t@74@0 null))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap |$o_$50_$1| |$f_$41_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 |$o_$50_$1| |$f_$41_$1|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap@4 |$o_$50_$1| |$f_$41_$1|))))
    (forall( (|$o_$50_$2| ref) (|$f_$41_$2| Field$ref$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$2| alloc) (not (= null |$o_$50_$2|))) (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$50_$2|)) (not (= t@74@0 null))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap |$o_$50_$2| |$f_$41_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 |$o_$50_$2| |$f_$41_$2|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap@4 |$o_$50_$2| |$f_$41_$2|))))
    (forall( (|$o_$50_$3| ref) (|$f_$41_$3| Field$BoxType$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$3| alloc) (not (= null |$o_$50_$3|))) (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$50_$3|)) (not (= t@74@0 null))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap |$o_$50_$3| |$f_$41_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@4 |$o_$50_$3| |$f_$41_$3|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$BoxType$ $Heap@4 |$o_$50_$3| |$f_$41_$3|))))
    (forall( (|$o_$50_$4| ref) (|$f_$41_$4| Field$$@Map@@BoxType@To@Bool@@$))(!(=> (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$50_$4| alloc) (not (= null |$o_$50_$4|))) (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$50_$4|)) (not (= t@74@0 null))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap |$o_$50_$4| |$f_$41_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 |$o_$50_$4| |$f_$41_$4|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap@4 |$o_$50_$4| |$f_$41_$4|))))
    (Node.Balanced $Heap@4 call5formal@r@8@0)
    (Node.Balanced@canCall $Heap@4 call5formal@r@8@0)
    (Node.BalanceValid $Heap@4 call5formal@r@8@0)
    (Node.BalanceValid@canCall $Heap@4 call5formal@r@8@0)
    (Node.Valid $Heap@4 call5formal@r@8@0)
    (Node.Valid@canCall $Heap@4 call5formal@r@8@0)
    (not (= null call5formal@r@8@0))
    (or (= call6formal@deltaH@9@0 1) (= call6formal@deltaH@9@0 0))
    (or (and (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ call5formal@r@8@0)) (not (= t@74@0 null))) (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call5formal@r@8@0 alloc)))
  )(and 
    anon43_Then@43_assertion
    anon43_Then@44
))))
(let ((anon37_Then@41 (=> (and true
    (=> (Node.Balanced@canCall $Heap t@63@0) (or (Node.Balanced $Heap t@63@0) (=> (not (= t@63@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.right)))))
  )(and 
    anon37_Then@41_assertion
    anon37_Then@42
))))
(let ((anon43_Then@41 (=> (and true
    (=> (Node.Balanced@canCall $Heap t@74@0) (or (Node.Balanced $Heap t@74@0) (=> (not (= t@74@0 null)) (Node.Balanced $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.right)))))
  )(and 
    anon43_Then@41_assertion
    anon43_Then@42
))))
(let ((anon37_Then@40 (=> (and true
    (=> (Node.Balanced@canCall $Heap t@63@0) (or (Node.Balanced $Heap t@63@0) (=> (not (= t@63@0 null)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@63@0 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@63@0 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@63@0 Node.balance) 0))))))
  )(and 
    anon37_Then@40_assertion
    anon37_Then@41
))))
(let ((anon43_Then@40 (=> (and true
    (=> (Node.Balanced@canCall $Heap t@74@0) (or (Node.Balanced $Heap t@74@0) (=> (not (= t@74@0 null)) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@74@0 Node.balance) 1) (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@74@0 Node.balance) (- 1)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@74@0 Node.balance) 0))))))
  )(and 
    anon43_Then@40_assertion
    anon43_Then@41
))))
(let ((anon37_Then@39 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap t@63@0) (or (Node.BalanceValid $Heap t@63@0) (=> (not (= t@63@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.right))))))
  )(and 
    anon37_Then@39_assertion
    anon37_Then@40
))))
(let ((anon43_Then@39 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap t@74@0) (or (Node.BalanceValid $Heap t@74@0) (=> (not (= t@74@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.right) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.right))))))
  )(and 
    anon43_Then@39_assertion
    anon43_Then@40
))))
(let ((anon37_Then@38 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap t@63@0) (or (Node.BalanceValid $Heap t@63@0) (=> (not (= t@63@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.left))))))
  )(and 
    anon37_Then@38_assertion
    anon37_Then@39
))))
(let ((anon43_Then@38 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap t@74@0) (or (Node.BalanceValid $Heap t@74@0) (=> (not (= t@74@0 null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.left) null)) (Node.BalanceValid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.left))))))
  )(and 
    anon43_Then@38_assertion
    anon43_Then@39
))))
(let ((anon37_Then@37 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap t@63@0) (or (Node.BalanceValid $Heap t@63@0) (=> (not (= t@63@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@63@0 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.left)))))))
  )(and 
    anon37_Then@37_assertion
    anon37_Then@38
))))
(let ((anon43_Then@37 (=> (and true
    (=> (Node.BalanceValid@canCall $Heap t@74@0) (or (Node.BalanceValid $Heap t@74@0) (=> (not (= t@74@0 null)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@74@0 Node.balance) (- (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.right)) (Node.Height $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.left)))))))
  )(and 
    anon43_Then@37_assertion
    anon43_Then@38
))))
(let ((anon37_Then@21 (=> (and true
    (= (= true $@bf_4) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.left))))
    (= (= true $@bf_5) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@63@0 Node.right))))
    (Node.Valid $Heap t@63@0)
    (not (Set@Subset$BoxType$ (ite $@bf_3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$) (ite $@bf_2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) Set@Empty$BoxType$)))
    (not (Set@Subset$BoxType$ (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@63@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) Set@Empty$BoxType$)))
    (or (= call5formal@r@8@0 null) (and (= (dtype call5formal@r@8@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call5formal@r@8@0 alloc)))
    (Set@Subset$BoxType$ (ite $@bf_2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) Set@Empty$BoxType$) (ite $@bf_3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$))
    (Set@Subset$BoxType$ (ite (not (= t@63@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$))
  )(and 
    anon37_Then@36_assertion
    anon37_Then@37
))))
(let ((anon43_Then@21 (=> (and true
    (= (= true $@bf_10) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.right))))
    (= (= true $@bf_9) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@74@0 Node.left))))
    (Node.Valid $Heap t@74@0)
    (not (Set@Subset$BoxType$ (ite $@bf_3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$) (ite $@bf_8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) Set@Empty$BoxType$)))
    (not (Set@Subset$BoxType$ (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@74@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) Set@Empty$BoxType$)))
    (or (= call5formal@r@8@0 null) (and (= (dtype call5formal@r@8@0) class.Node) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap call5formal@r@8@0 alloc)))
    (Set@Subset$BoxType$ (ite $@bf_8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) Set@Empty$BoxType$) (ite $@bf_3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$))
    (Set@Subset$BoxType$ (ite (not (= t@74@0 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) Set@Empty$BoxType$) (ite (not (= t@6 null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@6 Node.Repr) Set@Empty$BoxType$))
  )(and 
    anon43_Then@36_assertion
    anon43_Then@37
))))
(let ((anon37_Then@20 (=> (and true
    (= (= true $@bf_2) (not (= t@63@0 null)))
    (= (= true $@bf_3) (not (= t@6 null)))
    (forall( (|$o_$43_$0| ref) (|$f_$38_$0| Field$Bool$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$0| alloc) (not (= null |$o_$43_$0|))) (not (= t@63@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$43_$0|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$43_$0| |$f_$38_$0|)))
    (forall( (|$o_$43_$1| ref) (|$f_$38_$1| Field$Int$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$1| alloc) (not (= null |$o_$43_$1|))) (not (= t@63@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$43_$1|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$43_$1| |$f_$38_$1|)))
    (forall( (|$o_$43_$2| ref) (|$f_$38_$2| Field$ref$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$2| alloc) (not (= null |$o_$43_$2|))) (not (= t@63@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$43_$2|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$43_$2| |$f_$38_$2|)))
    (forall( (|$o_$43_$3| ref) (|$f_$38_$3| Field$BoxType$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$3| alloc) (not (= null |$o_$43_$3|))) (not (= t@63@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$43_$3|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$43_$3| |$f_$38_$3|)))
    (forall( (|$o_$43_$4| ref) (|$f_$38_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$43_$4| alloc) (not (= null |$o_$43_$4|))) (not (= t@63@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@63@0 Node.Repr) ($Box$ref$ |$o_$43_$4|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$43_$4| |$f_$38_$4|)))
  )(and 
    anon37_Then@20_assertion
    anon37_Then@21
))))
(let ((anon43_Then@20 (=> (and true
    (= (= true $@bf_3) (not (= t@6 null)))
    (= (= true $@bf_8) (not (= t@74@0 null)))
    (forall( (|$o_$47_$0| ref) (|$f_$40_$0| Field$Bool$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$0| alloc) (not (= null |$o_$47_$0|))) (not (= t@74@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$47_$0|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Bool$ $_Frame@0 |$o_$47_$0| |$f_$40_$0|)))
    (forall( (|$o_$47_$1| ref) (|$f_$40_$1| Field$Int$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$1| alloc) (not (= null |$o_$47_$1|))) (not (= t@74@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$47_$1|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$Int$ $_Frame@0 |$o_$47_$1| |$f_$40_$1|)))
    (forall( (|$o_$47_$2| ref) (|$f_$40_$2| Field$ref$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$2| alloc) (not (= null |$o_$47_$2|))) (not (= t@74@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$47_$2|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 |$o_$47_$2| |$f_$40_$2|)))
    (forall( (|$o_$47_$3| ref) (|$f_$40_$3| Field$BoxType$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$3| alloc) (not (= null |$o_$47_$3|))) (not (= t@74@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$47_$3|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$BoxType$ $_Frame@0 |$o_$47_$3| |$f_$40_$3|)))
    (forall( (|$o_$47_$4| ref) (|$f_$40_$4| Field$$@Map@@BoxType@To@Bool@@$))(=> (and (and (and (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ $Heap |$o_$47_$4| alloc) (not (= null |$o_$47_$4|))) (not (= t@74@0 null))) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap t@74@0 Node.Repr) ($Box$ref$ |$o_$47_$4|))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$$@Map@@BoxType@To@Bool@@$ $_Frame@0 |$o_$47_$4| |$f_$40_$4|)))
  )(and 
    anon43_Then@20_assertion
    anon43_Then@21
))))
(let ((anon37_Then@18 (=> (and true
    (= t@63@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 t@6 Node.left)
  )(and 
    anon37_Then@19_assertion
    anon37_Then@20
))))
(let ((anon43_Then@18 (=> (and true
    (= t@74@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
    (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@Bool@@$ref$ $_Frame@0 t@6 Node.right)
  )(and 
    anon43_Then@19_assertion
    anon43_Then@20
))))
(let ((anon37_Then@16 (=> (and true
    (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
  )(and 
    anon37_Then@17_assertion
    anon37_Then@18
))))
(let ((anon43_Then@16 (=> (and true
    (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
  )(and 
    anon43_Then@17_assertion
    anon43_Then@18
))))
(let ((anon37_Then@15 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (forall( (|i#16_$7| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Contents) ($Box$Int$ |i#16_$7|)) (< |i#16_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value)))))))
  )(and 
    anon37_Then@15_assertion
    anon37_Then@16
))))
(let ((anon43_Then@15 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (forall( (|i#16_$11| Int))(=> (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Contents) ($Box$Int$ |i#16_$11|)) (< |i#16_$11| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value)))))))
  )(and 
    anon43_Then@15_assertion
    anon43_Then@16
))))
(let ((anon37_Then@14 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Contents) Set@Empty$BoxType$)))))
  )(and 
    anon37_Then@14_assertion
    anon37_Then@15
))))
(let ((anon43_Then@14 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Contents) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.value))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Contents) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Contents) Set@Empty$BoxType$)))))
  )(and 
    anon43_Then@14_assertion
    anon43_Then@15
))))
(let ((anon37_Then@13 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) Set@Empty$BoxType$)))))
  )(and 
    anon37_Then@13_assertion
    anon37_Then@14
))))
(let ((anon43_Then@13 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Set@Equal$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) (Set@Union$BoxType$ (Set@Union$BoxType$ (Set@UnionOne$BoxType$ Set@Empty$BoxType$ ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) Set@Empty$BoxType$)) (ite (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) Set@Empty$BoxType$)))))
  )(and 
    anon43_Then@13_assertion
    anon43_Then@14
))))
(let ((anon37_Then@12 (=> (and true
    (= (= true $@bf) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left))))
    (= (= true $@bf_1) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right))))
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr)))))
  )(and 
    anon37_Then@12_assertion
    anon37_Then@13
))))
(let ((anon43_Then@12 (=> (and true
    (= (= true $@bf_6) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left))))
    (= (= true $@bf_7) (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right))))
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null))) (Set@Disjoint$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr)))))
  )(and 
    anon43_Then@12_assertion
    anon43_Then@13
))))
(let ((anon37_Then@11 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right))))
  )(and 
    anon37_Then@11_assertion
    anon37_Then@12
))))
(let ((anon43_Then@11 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right))))
  )(and 
    anon43_Then@11_assertion
    anon43_Then@12
))))
(let ((anon37_Then@10 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left))))
  )(and 
    anon37_Then@10_assertion
    anon37_Then@11
))))
(let ((anon43_Then@10 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left))))
  )(and 
    anon43_Then@10_assertion
    anon43_Then@11
))))
(let ((anon37_Then@9 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr)))))
  )(and 
    anon37_Then@9_assertion
    anon37_Then@10
))))
(let ((anon43_Then@9 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr)))))
  )(and 
    anon43_Then@9_assertion
    anon43_Then@10
))))
(let ((anon37_Then@8 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))))))
  )(and 
    anon37_Then@8_assertion
    anon37_Then@9
))))
(let ((anon43_Then@8 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)))))))
  )(and 
    anon43_Then@8_assertion
    anon43_Then@9
))))
(let ((anon37_Then@7 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.right))))))
  )(and 
    anon37_Then@7_assertion
    anon37_Then@8
))))
(let ((anon43_Then@7 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.right))))))
  )(and 
    anon43_Then@7_assertion
    anon43_Then@8
))))
(let ((anon37_Then@6 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr)))))
  )(and 
    anon37_Then@6_assertion
    anon37_Then@7
))))
(let ((anon43_Then@6 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (Set@Subset$BoxType$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr)))))
  )(and 
    anon43_Then@6_assertion
    anon43_Then@7
))))
(let ((anon37_Then@5 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))))))
  )(and 
    anon37_Then@5_assertion
    anon37_Then@6
))))
(let ((anon43_Then@5 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)))))))
  )(and 
    anon43_Then@5_assertion
    anon43_Then@6
))))
(let ((anon37_Then@4 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.left))))))
  )(and 
    anon37_Then@4_assertion
    anon37_Then@5
))))
(let ((anon43_Then@4 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.left))))))
  )(and 
    anon43_Then@4_assertion
    anon43_Then@5
))))
(let ((anon37_Then@3 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ null)))))
  )(and 
    anon37_Then@3_assertion
    anon37_Then@4
))))
(let ((anon43_Then@3 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (not (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ null)))))
  )(and 
    anon43_Then@3_assertion
    anon43_Then@4
))))
(let ((anon37_Then@2 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left)))))
  )(and 
    anon37_Then@2_assertion
    anon37_Then@3
))))
(let ((anon43_Then@2 (=> (and true
    (or (Node.Valid $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)) (=> (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) null)) (MapRead$$@Map@@BoxType@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@BoxType@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right) Node.Repr) ($Box$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right)))))
  )(and 
    anon43_Then@2_assertion
    anon43_Then@3
))))
(let ((anon37_Then (=> (and true
    $@condition_$0
    (< key@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value))
    (= n@62@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
    (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.left))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value) key@7))
  )(and 
    anon37_Then@1_assertion
    anon37_Then@2
))))
(let ((anon43_Then (=> (and true
    $@condition_$2
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value) key@7)
    (= n@73@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
    (Node.Valid@canCall $Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ $Heap t@6 Node.right))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value) key@7))
  )(and 
    anon43_Then@1_assertion
    anon43_Then@2
))))
(let ((anon37_Else (=> (and true
    (not $@condition_$0)
    (not (< key@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ $Heap t@6 Node.value)))
  )
    (and anon43_Else anon43_Then)
)))
(let ((anon36_Else (=> (and true
    (not $@condition)
    (not (= null t@6))
  )
    (and anon37_Else anon37_Then)
)))
(let (($root (=> (and true
  )
    (and anon36_Else anon36_Then)
)))
   $root
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
