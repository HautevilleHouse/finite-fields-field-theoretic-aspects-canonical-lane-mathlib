import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure FieldExtension where
  baseField : Type
  extensionField : Type
  degree : ℕ
  irreduciblePolynomial : Prop
  basis : Prop
  normAndTrace : Prop
  irreduciblePolynomialTerm : irreduciblePolynomial
  basisTerm : basis
  normAndTraceTerm : normAndTrace

def FieldExtensionClosed (E : FieldExtension) : Prop :=
  E.irreduciblePolynomial ∧ E.basis ∧ E.normAndTrace

theorem field_extension_closed_from_evidence (E : FieldExtension) : FieldExtensionClosed E :=
  And.intro E.irreduciblePolynomialTerm (And.intro E.basisTerm E.normAndTraceTerm)

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse