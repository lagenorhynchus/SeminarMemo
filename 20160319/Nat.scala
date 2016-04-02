// オブジェクトによる定義
sealed trait Nat {
  def +(n: Nat): Nat
}

object Zero extends Nat {
  def +(a: Nat): Nat = a
}

case class Succ(b: Nat) extends Nat {
  def +(a: Nat): Nat = Succ(a + b)
}

// 型による定義
// cf. https://github.com/buster84/Natural
sealed trait Nat2 {
  type add[N <: Nat2] <: Nat2
}

trait Zero2 extends Nat2 {
  override type add[N <: Nat2] = N
}

trait Succ2[N <: Nat2] extends Nat2 {
  override type add[O <: Nat2] = Succ2[N#add[O]]
}
