(set-logic SLIA)
(synth-fun f ((name String)) String
    ((Start String (ntString))
     (ntString String (
           name
           " "
(str.++ ntString ntString)
(str.replace ntString ntString ntString)
(str.at ntString ntInt)
(int.to.str ntInt)
(ite ntBool ntString ntString)
(str.substr ntString ntInt ntInt)
))
      (ntInt Int (

            0 1 2 3 4 5
(+ ntInt ntInt)
(- ntInt ntInt)
(str.len ntString)
(str.to.int ntString)
(str.indexof ntString ntString ntInt)
))
(ntBool Bool (

      true false
(= ntInt ntInt)
(str.prefixof ntString ntString)
(str.suffixof ntString ntString)
(str.contains ntString ntString)
))
))
(constraint (= (f "Ducati100") "Ducati"))
(constraint (= (f "Honda125") "Honda"))
(constraint (= (f "Ducati250") "Ducati"))
(constraint (= (f "Honda250") "Honda"))
(constraint (= (f "Honda550") "Honda"))
(constraint (= (f "Ducati125") "Ducati"))

(check-synth)
(define-fun f_1 ((name String)) String (str.substr name 0 (- (str.len name) 3)))