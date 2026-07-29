import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean.SpectralTheorem
import DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean.UncertaintyPrincipleLayer
import DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean.StateSpaceLayer

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean

def ConstrainedQuantumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_quantum_endgame (A : AdmissibleClass) : ConstrainedQuantumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean
end HautevilleHouse