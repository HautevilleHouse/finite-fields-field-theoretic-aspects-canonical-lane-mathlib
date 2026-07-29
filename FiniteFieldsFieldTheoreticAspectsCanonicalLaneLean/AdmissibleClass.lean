import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure FiniteFieldAdmissibleObject where
  fieldCarrier : Type
  fieldStructure : Field fieldCarrier
  characteristic : ℕ
  extensionDegree : ℕ
  frobeniusAutomorphism : fieldCarrier → fieldCarrier
  isFinite : Prop
  isPerfect : Prop

structure AdmissibleClass where
  object : FiniteFieldAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (bridgeClosed A) ∧ (gateClosed A)

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse