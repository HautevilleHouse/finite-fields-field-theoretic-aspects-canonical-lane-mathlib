import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure PolynomialFactorizationPackage where
  polynomialRing : Type
  irreducibleFactorization : Prop
  rootsInExtension : Prop
  berlekampAlgorithm : Prop
  irreducibleFactorizationTerm : irreducibleFactorization
  rootsInExtensionTerm : rootsInExtension
  berlekampAlgorithmTerm : berlekampAlgorithm

def PolynomialFactorizationClosed (P : PolynomialFactorizationPackage) : Prop :=
  P.irreducibleFactorization ∧ P.rootsInExtension ∧ P.berlekampAlgorithm

theorem polynomial_factorization_closed_from_evidence (P : PolynomialFactorizationPackage) : PolynomialFactorizationClosed P :=
  And.intro P.irreducibleFactorizationTerm (And.intro P.rootsInExtensionTerm P.berlekampAlgorithmTerm)

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse