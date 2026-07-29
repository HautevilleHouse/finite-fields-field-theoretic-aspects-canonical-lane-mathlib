import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.isPerfect

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.isPerfect

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse