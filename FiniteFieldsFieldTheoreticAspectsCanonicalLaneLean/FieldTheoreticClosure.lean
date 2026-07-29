import canonicalLaneMathlib.AdmissibleClass
import FiniteFieldExtensions
import FrobeniusEndomorphism
import GaloisGroup
import TraceNorm

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AlgebraicClosureExtension (A.object : Type)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedFieldTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_field_theory_endgame (A : AdmissibleClass) : ConstrainedFieldTheoryClosure A := by
  refine And.intro ?_ (gate_from_admissible_class A)
  -- bridge closed is satisfied by the algebraic closure existence
  exact AlgebraicClosureExtension.mk (by
    refine ⟨?_, ?_, ?_, ?_⟩
    · exact A.object
    · infer_instance
    · exact Algebra.toRingHom
    · exact FiniteDimensional.finrank A.object A.object)

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse