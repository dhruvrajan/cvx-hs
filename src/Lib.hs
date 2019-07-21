module Lib
    () where

data Leaf a = Variable a | Parameter a | Constant a

class ExpressionType a where
  isAffine :: a -> Bool
  isConcave :: a -> Bool
  isConstant :: a -> Bool
  isConvex :: a -> Bool
  isDcp :: a -> Bool
  isDgp :: a -> Bool
  isLogLogAffine :: a -> Bool
  isLogLogConcave :: a -> Bool
  isLogLogConvex :: a -> Bool
  isNonNeg :: a -> Bool
  isNonPos :: a -> Bool

  name :: a -> String
  ndim :: a -> Int
  shape :: a -> (Int, Int)
  sign :: a -> String
  size :: a -> Int
  value :: a -> Bool

class (ExpressionType a) => LeafType a where
  isLeaf :: a -> Bool
