import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure SplittingField (p : ℕ) [Fact p.Prime] where
  baseFieldType : Type u
  polynomial : Polynomial (FiniteField p)
  extensionField : Type v
  fieldStructure : Field extensionField
  embedding : FiniteField p → extensionField
  rootInExtension : extensionField
  splits : Polynomial.Splits (algebraMap (FiniteField p) extensionField) polynomial

structure SplittingEvidence {p : ℕ} [Fact p.Prime] (S : SplittingField p) where
  rootInExtensionMapsToZero : S.polynomial.eval (S.rootInExtension) = 0
  splittingFieldMinimal : ∀ (K : Type v) [Field K] [Algebra (FiniteField p) K], 
    (∃ x : K, S.polynomial.eval x = 0) → (∃ f : S.extensionField → K, IsFieldHom f)
  splitsClosed : S.splits

def SplittingClosed {p : ℕ} [Fact p.Prime] (S : SplittingField p) : Prop :=
  S.splits

theorem splitting_closed_from_evidence {p : ℕ} [Fact p.Prime] (S : SplittingField p)
    (ev : SplittingEvidence S) : SplittingClosed S := ev.splitsClosed

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse