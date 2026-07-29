import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure FiniteFieldStructure where
  characteristic : ℕ
  order : ℕ
  baseField : Type
  baseFieldFinite : Fintype baseField
  fieldOperations : Prop
  invertibleNonzero : Prop
  fieldOperationsTerm : fieldOperations
  invertibleNonzeroTerm : invertibleNonzero

def FiniteFieldStructureClosed (F : FiniteFieldStructure) : Prop :=
  F.fieldOperations ∧ F.invertibleNonzero

theorem finite_field_structure_closed_from_evidence (F : FiniteFieldStructure) : FiniteFieldStructureClosed F :=
  And.intro F.fieldOperationsTerm F.invertibleNonzeroTerm

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse