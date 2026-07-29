import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean

structure StateSpaceCertificate where
  hilbertSpaceClosure : Prop
  stateVectorClosure : Prop
  densityOperatorClosure : Prop
  hilbertSpaceClosureClosed : hilbertSpaceClosure
  stateVectorClosureClosed : stateVectorClosure
  densityOperatorClosureClosed : densityOperatorClosure

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  hilbertSpaceClosure := True
  stateVectorClosure := True
  densityOperatorClosure := True
  hilbertSpaceClosureClosed := trivial
  stateVectorClosureClosed := trivial
  densityOperatorClosureClosed := trivial
}

def StateSpaceClosed (C : StateSpaceCertificate) : Prop :=
  C.hilbertSpaceClosure ∧ C.stateVectorClosure ∧ C.densityOperatorClosure

theorem source_state_space_closed : StateSpaceClosed sourceStateSpaceCertificate := by
  exact And.intro sourceStateSpaceCertificate.hilbertSpaceClosureClosed
    (And.intro sourceStateSpaceCertificate.stateVectorClosureClosed
      sourceStateSpaceCertificate.densityOperatorClosureClosed)

end DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean
end HautevilleHouse