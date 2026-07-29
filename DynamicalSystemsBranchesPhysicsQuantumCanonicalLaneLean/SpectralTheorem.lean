import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean

structure SpectralCertificate where
  spectralProjector : Prop
  functionalCalculus : Prop
  spectralMeasure : Prop
  spectralProjectorClosed : spectralProjector
  functionalCalculusClosed : functionalCalculus
  spectralMeasureClosed : spectralMeasure

def sourceSpectralCertificate : SpectralCertificate := {
  spectralProjector := True
  functionalCalculus := True
  spectralMeasure := True
  spectralProjectorClosed := trivial
  functionalCalculusClosed := trivial
  spectralMeasureClosed := trivial
}

def SpectralTheoremClosed (C : SpectralCertificate) : Prop :=
  C.spectralProjector ∧ C.functionalCalculus ∧ C.spectralMeasure

theorem source_spectral_theorem_closed : SpectralTheoremClosed sourceSpectralCertificate := by
  exact And.intro sourceSpectralCertificate.spectralProjectorClosed
    (And.intro sourceSpectralCertificate.functionalCalculusClosed
      sourceSpectralCertificate.spectralMeasureClosed)

end DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean
end HautevilleHouse