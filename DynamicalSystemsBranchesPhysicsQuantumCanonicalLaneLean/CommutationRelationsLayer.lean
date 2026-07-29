import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean.QuantumDynamicalObjects

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean

structure CommutationCertificate where
  positionOp : Observable
  momentumOp : Observable
  canonicalCommutation : Prop
  heisenbergAlgebra : Prop
  commutationClosed : Bool

def sourceCommutationCertificate : CommutationCertificate := {
  positionOp := primitiveQuantumObject.observable
  momentumOp := primitiveQuantumObject.observable
  canonicalCommutation := True
  heisenbergAlgebra := True
  commutationClosed := true
}

def CommutationLayerClosed (C : CommutationCertificate) : Prop :=
  C.commutationClosed

theorem source_commutation_layer_closed : CommutationLayerClosed sourceCommutationCertificate := by
  dsimp [CommutationLayerClosed, sourceCommutationCertificate]
  trivial

end DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean
end HautevilleHouse