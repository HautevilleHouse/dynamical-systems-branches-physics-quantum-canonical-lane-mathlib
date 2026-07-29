import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean

structure HilbertSpace where
  carrier : Type
  innerProduct : carrier → carrier → ℂ
  completeness : Prop

def zeroVector (H : HilbertSpace) : H.carrier := sorry

structure State where
  vector : HilbertSpace.carrier
  norm : ℝ
  normCondition : norm = 1

def pureState (v : HilbertSpace.carrier) : State := {
  vector := v
  norm := 1
  normCondition := by rfl
}

structure Observable where
  operator : HilbertSpace.carrier → HilbertSpace.carrier
  hermitian : ∀ x y, innerProduct (operator x) y = innerProduct x (operator y)

def identityObservable (H : HilbertSpace) : Observable := {
  operator := λ x => x
  hermitian := by intro x y; simp
}

structure QuantumObject where
  hilbertSpace : HilbertSpace
  state : State
  observable : Observable

def primitiveQuantumObject : QuantumObject := {
  hilbertSpace := { carrier := ℂ, innerProduct := λ a b => a * conj b, completeness := True }
  state := pureState (⟨1,0⟩ : ℂ)
  observable := identityObservable _
}

end DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean
end HautevilleHouse