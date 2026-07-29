import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure FrobeniusEndomorphism (p : ℕ) [Fact p.Prime] where
  fieldType : Type u
  fieldStructure : Field fieldType
  charP : CharP fieldType p
  frobeniusMap : fieldType → fieldType
  frobeniusAdditive : ∀ a b, frobeniusMap (a + b) = frobeniusMap a + frobeniusMap b
  frobeniusMultiplicative : ∀ a b, frobeniusMap (a * b) = frobeniusMap a * frobeniusMap b
  frobeniusOne : frobeniusMap 1 = 1
  frobeniusPow : ∀ a, frobeniusMap a = a ^ p

structure FrobeniusEvidence {p : ℕ} [Fact p.Prime] (F : FrobeniusEndomorphism p) where
  additiveClosed : ∀ a b, F.frobeniusMap (a + b) = F.frobeniusMap a + F.frobeniusMap b
  multiplicativeClosed : ∀ a b, F.frobeniusMap (a * b) = F.frobeniusMap a * F.frobeniusMap b
  powerClosed : ∀ a, F.frobeniusMap a = a ^ p

def FrobeniusClosed {p : ℕ} [Fact p.Prime] (F : FrobeniusEndomorphism p) : Prop :=
  F.frobeniusAdditive ∧ F.frobeniusMultiplicative ∧ F.frobeniusPow

theorem frobenius_closed_from_evidence {p : ℕ} [Fact p.Prime] (F : FrobeniusEndomorphism p)
    (ev : FrobeniusEvidence F) : FrobeniusClosed F := by
  exact And.intro ev.additiveClosed (And.intro ev.multiplicativeClosed ev.powerClosed)

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse