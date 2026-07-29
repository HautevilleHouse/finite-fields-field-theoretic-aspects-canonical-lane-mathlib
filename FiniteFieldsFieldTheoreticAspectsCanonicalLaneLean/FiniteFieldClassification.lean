import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure FiniteFieldClassification where
  characteristic : ℕ
  order : ℕ
  primePower : ∃ (p : ℕ) (n : ℕ), Nat.Prime p ∧ order = p ^ n
  fieldStructure : Type u
  fieldIsFinite : Fintype fieldStructure
  fieldHasOrder : Fintype.card fieldStructure = order

structure FiniteFieldClassificationEvidence (C : FiniteFieldClassification) where
  primePowerClosed : C.primePower
  fieldHasOrderClosed : C.fieldHasOrder

def FiniteFieldClassificationClosed (C : FiniteFieldClassification) : Prop :=
  C.primePower ∧ C.fieldHasOrder

theorem finite_field_classification_closed_from_evidence (C : FiniteFieldClassification) (Ev : FiniteFieldClassificationEvidence C) : FiniteFieldClassificationClosed C := by
  exact And.intro Ev.primePowerClosed Ev.fieldHasOrderClosed

theorem finite_field_exists_for_prime_power (p : ℕ) (n : ℕ) [Fact (Nat.Prime p)] : Nonempty (FiniteFieldClassification) := by
  refine ⟨{characteristic := p, order := p ^ n, primePower := ⟨p, n, inferInstance, rfl⟩, fieldStructure := ?_, fieldIsFinite := ?_, fieldHasOrder := ?_}⟩
  exact (ZMod (p ^ n)).field
  exact inferInstance
  simp

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse