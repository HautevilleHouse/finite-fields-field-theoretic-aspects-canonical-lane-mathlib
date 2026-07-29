import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

open BridgeLemmas
open GateLemmas

def ConstrainedFiniteFieldClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_field_endgame (A : AdmissibleClass) : ConstrainedFiniteFieldClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse