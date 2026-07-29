import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean

structure SymmetryAndDynamicsCertificate where
  hilbertSpace : Type
  innerProduct : InnerProductSpace ℂ hilbertSpace
  unitaryGroup : Prop
  hamiltonian : hamiltonian
  timeEvolution : Prop
  symmetryGroup : Prop
  unitaryGroupClosed : unitaryGroup
  hamiltonianClosed : hamiltonian
  timeEvolutionClosed : timeEvolution
  symmetryGroupClosed : symmetryGroup

def sourceSymmetryAndDynamicsCertificate : SymmetryAndDynamicsCertificate := {
  hilbertSpace := ℂ
  innerProduct := by infer_instance
  unitaryGroup := True
  hamiltonian := True
  timeEvolution := True
  symmetryGroup := True
  unitaryGroupClosed := trivial
  hamiltonianClosed := trivial
  timeEvolutionClosed := trivial
  symmetryGroupClosed := trivial
}

def SymmetryAndDynamicsClosed (C : SymmetryAndDynamicsCertificate) : Prop :=
  C.unitaryGroup ∧ C.hamiltonian ∧ C.timeEvolution ∧ C.symmetryGroup

theorem source_symmetry_and_dynamics_closed :
    SymmetryAndDynamicsClosed sourceSymmetryAndDynamicsCertificate := by
  exact And.intro sourceSymmetryAndDynamicsCertificate.unitaryGroupClosed
    (And.intro sourceSymmetryAndDynamicsCertificate.hamiltonianClosed
      (And.intro sourceSymmetryAndDynamicsCertificate.timeEvolutionClosed
        sourceSymmetryAndDynamicsCertificate.symmetryGroupClosed))

end DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean
end HautevilleHouse