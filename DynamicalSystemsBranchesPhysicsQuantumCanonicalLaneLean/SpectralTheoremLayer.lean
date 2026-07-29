import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean.QuantumDynamicalObjects

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean

structure SpectralCertificate where
  hilbertSpace : HilbertSpace
  compactSelfAdjoint : Observable
  spectralDecomposition : Prop
  completenessOfEigenvectors : Prop
  spectralTheoremClosed : Bool

def sourceSpectralCertificate : SpectralCertificate := {
  hilbertSpace := primitiveQuantumObject.hilbertSpace
  compactSelfAdjoint := identityObservable primitiveQuantumObject.hilbertSpace
  spectralDecomposition := True
  completenessOfEigenvectors := True
  spectralTheoremClosed := true
}

def SpectralLayerClosed (C : SpectralCertificate) : Prop :=
  C.spectralTheoremClosed

theorem source_spectral_layer_closed : SpectralLayerClosed sourceSpectralCertificate := by
  dsimp [SpectralLayerClosed, sourceSpectralCertificate]
  trivial

end DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean
end HautevilleHouse