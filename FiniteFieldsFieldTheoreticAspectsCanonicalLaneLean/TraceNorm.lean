import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure TraceForm (p : ℕ) [Fact p.Prime] where
  fieldType : Type u
  fieldStructure : Field fieldType
  charP : CharP fieldType p
  trace : fieldType → ℕ
  traceAdditive : ∀ a b, trace (a + b) = trace a + trace b
  traceMultiplicative : ∀ a b, trace (a * b) = trace a * trace b
  traceOne : trace 1 = 1

structure NormForm (p : ℕ) [Fact p.Prime] where
  fieldType : Type u
  fieldStructure : Field fieldType
  norm : fieldType → ℕ
  normMultiplicative : ∀ a b, norm (a * b) = norm a * norm b
  normOne : norm 1 = 1
  normZero : norm 0 = 0

structure TraceNormEvidence {p : ℕ} [Fact p.Prime] (T : TraceForm p) (N : NormForm p) where
  traceProduct : ∀ a b, T.trace (a * b) = T.trace a * T.trace b
  normTraceRelation : ∀ a, N.norm a = T.trace (a ^ (Fintype.card T.fieldType / 2))

def TraceClosed {p : ℕ} [Fact p.Prime] (T : TraceForm p) : Prop :=
  T.traceAdditive ∧ T.traceMultiplicative ∧ T.traceOne

theorem trace_closed_from_evidence {p : ℕ} [Fact p.Prime] (T : TraceForm p)
    (ev : TraceForm p) : TraceClosed T := by
  exact And.intro ev.traceAdditive (And.intro ev.traceMultiplicative ev.traceOne)

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse