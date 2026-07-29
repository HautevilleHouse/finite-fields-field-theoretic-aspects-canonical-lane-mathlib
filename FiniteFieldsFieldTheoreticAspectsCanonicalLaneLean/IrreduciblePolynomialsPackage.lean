import canonicalLaneMathlib.AdmissibleClass
import .FiniteFieldAdmittedObject

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure IrreduciblePolynomialsPackage (O : FiniteFieldAdmittedObject) where
  irreduciblePolynomialExists : Prop
  factorizationUnique : Prop
  primitiveElementExists : Prop
  degreeOfIrreducible : Prop

structure IrreduciblePolynomialsEvidence (O : FiniteFieldAdmittedObject) (I : IrreduciblePolynomialsPackage O) where
  irreduciblePolynomialExistsClosed : I.irreduciblePolynomialExists
  factorizationUniqueClosed : I.factorizationUnique
  primitiveElementExistsClosed : I.primitiveElementExists
  degreeOfIrreducibleClosed : I.degreeOfIrreducible

def IrreduciblePolynomialsClosed (O : FiniteFieldAdmittedObject) (I : IrreduciblePolynomialsPackage O) : Prop :=
  I.irreduciblePolynomialExists ∧ I.factorizationUnique ∧ I.primitiveElementExists ∧ I.degreeOfIrreducible

theorem irreducible_polynomials_closed_from_evidence (O : FiniteFieldAdmittedObject) (I : IrreduciblePolynomialsPackage O) (E : IrreduciblePolynomialsEvidence O I) :
    IrreduciblePolynomialsClosed O I := by
  exact And.intro E.irreduciblePolynomialExistsClosed
    (And.intro E.factorizationUniqueClosed
      (And.intro E.primitiveElementExistsClosed E.degreeOfIrreducibleClosed))

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse