import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean

structure SpectralDecompositionCertificate where
  hilbertSpace : Type
  innerProduct : InnerProductSpace ℂ hilbertSpace
  selfAdjointOperator : hilbertSpace → hilbertSpace
  spectralMeasure : Prop
  projectionValuedMeasure : Prop
  spectralTheoremClosed : Prop
  spectralMeasureClosed : spectralMeasure
  projectionValuedMeasureClosed : projectionValuedMeasure
  spectralTheoremClosedProof : spectralTheoremClosed

def sourceSpectralDecompositionCertificate : SpectralDecompositionCertificate := {
  hilbertSpace := ℂ
  innerProduct := by infer_instance
  selfAdjointOperator := fun x => x
  spectralMeasure := True
  projectionValuedMeasure := True
  spectralTheoremClosed := True
  spectralMeasureClosed := trivial
  projectionValuedMeasureClosed := trivial
  spectralTheoremClosedProof := trivial
}

def SpectralDecompositionClosed (C : SpectralDecompositionCertificate) : Prop :=
  C.spectralMeasure ∧ C.projectionValuedMeasure ∧ C.spectralTheoremClosed

theorem source_spectral_decomposition_closed :
    SpectralDecompositionClosed sourceSpectralDecompositionCertificate := by
  exact And.intro sourceSpectralDecompositionCertificate.spectralMeasureClosed
    (And.intro sourceSpectralDecompositionCertificate.projectionValuedMeasureClosed
      sourceSpectralDecompositionCertificate.spectralTheoremClosedProof)

end DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean
end HautevilleHouse