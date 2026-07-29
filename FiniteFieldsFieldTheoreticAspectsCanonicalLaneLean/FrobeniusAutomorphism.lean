import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure FrobeniusAutomorphismPackage (A : AdmissibleClass) where
  frobenius : A.object.fieldCarrier → A.object.fieldCarrier
  frobeniusEvaluated : Prop
  frobeniusInjective : Prop
  frobeniusSurjective : Prop
  frobeniusFieldHom : Prop

structure FrobeniusAutomorphismEvidence (A : AdmissibleClass) (F : FrobeniusAutomorphismPackage A) where
  frobeniusEvaluatedClosed : F.frobeniusEvaluated
  frobeniusInjectiveClosed : F.frobeniusInjective
  frobeniusSurjectiveClosed : F.frobeniusSurjective
  frobeniusFieldHomClosed : F.frobeniusFieldHom

def FrobeniusAutomorphismClosed (A : AdmissibleClass) (F : FrobeniusAutomorphismPackage A) : Prop :=
  F.frobeniusEvaluated ∧ F.frobeniusInjective ∧ F.frobeniusSurjective ∧ F.frobeniusFieldHom

theorem frobenius_automorphism_closed (A : AdmissibleClass) (F : FrobeniusAutomorphismPackage A)
    (E : FrobeniusAutomorphismEvidence A F) : FrobeniusAutomorphismClosed A F := by
  exact And.intro E.frobeniusEvaluatedClosed (And.intro E.frobeniusInjectiveClosed
    (And.intro E.frobeniusSurjectiveClosed E.frobeniusFieldHomClosed))

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse