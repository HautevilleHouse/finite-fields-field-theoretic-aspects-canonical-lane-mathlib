import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

def ConstrainedFiniteFieldsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_fields_endgame (A : AdmissibleClass) :
    ConstrainedFiniteFieldsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse