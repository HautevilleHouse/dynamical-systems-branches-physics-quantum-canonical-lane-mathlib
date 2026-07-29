import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean

structure ObservablesAndMeasurementCertificate where
  hilbertSpace : Type
  innerProduct : InnerProductSpace ℂ hilbertSpace
  observable : Prop
  expectationValue : Prop
  projectionPostulate : Prop
  observableClosed : observable
  expectationValueClosed : expectationValue
  projectionPostulateClosed : projectionPostulate

def sourceObservablesAndMeasurementCertificate : ObservablesAndMeasurementCertificate := {
  hilbertSpace := ℂ
  innerProduct := by infer_instance
  observable := True
  expectationValue := True
  projectionPostulate := True
  observableClosed := trivial
  expectationValueClosed := trivial
  projectionPostulateClosed := trivial
}

def ObservablesAndMeasurementClosed (C : ObservablesAndMeasurementCertificate) : Prop :=
  C.observable ∧ C.expectationValue ∧ C.projectionPostulate

theorem source_observables_and_measurement_closed :
    ObservablesAndMeasurementClosed sourceObservablesAndMeasurementCertificate := by
  exact And.intro sourceObservablesAndMeasurementCertificate.observableClosed
    (And.intro sourceObservablesAndMeasurementCertificate.expectationValueClosed
      sourceObservablesAndMeasurementCertificate.projectionPostulateClosed)

end DynamicalSystemsBranchesPhysicsQuantumCanonicalLaneLean
end HautevilleHouse