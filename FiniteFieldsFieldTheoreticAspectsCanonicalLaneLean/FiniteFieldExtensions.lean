import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure FiniteFieldExtension (K : Type u) [Field K] where
  L : Type v
  instField : Field L
  embed : K →+* L
  finiteDimensional : FiniteDimensional K L

def AlgebraicClosureExtension (K : Type u) [Field K] : Prop :=
  ∃ (L : FiniteFieldExtension K), IsAlgClosed L.L

structure AdmissibleFieldExtension (K : Type u) [Field K] where
  extension : FiniteFieldExtension K
  degreeAdmissible : ℕ
  degreeProof : FiniteDimensional.finrank K extension.L = degreeAdmissible

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse