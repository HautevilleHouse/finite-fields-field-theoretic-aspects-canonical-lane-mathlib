import canonicalLaneMathlib.AdmissibleClass
import .FiniteFieldAdmittedObject

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure GaloisTheoryPackage (O : FiniteFieldAdmittedObject) where
  frobeniusAutomorphism : Prop
  fixedFieldOfAutomorphism : Prop
  galoisGroupCyclic : Prop
  intermediateFieldsClassified : Prop

structure GaloisTheoryEvidence (O : FiniteFieldAdmittedObject) (G : GaloisTheoryPackage O) where
  frobeniusAutomorphismClosed : G.frobeniusAutomorphism
  fixedFieldOfAutomorphismClosed : G.fixedFieldOfAutomorphism
  galoisGroupCyclicClosed : G.galoisGroupCyclic
  intermediateFieldsClassifiedClosed : G.intermediateFieldsClassified

def GaloisTheoryClosed (O : FiniteFieldAdmittedObject) (G : GaloisTheoryPackage O) : Prop :=
  G.frobeniusAutomorphism ∧ G.fixedFieldOfAutomorphism ∧ G.galoisGroupCyclic ∧ G.intermediateFieldsClassified

theorem galois_theory_closed_from_evidence (O : FiniteFieldAdmittedObject) (G : GaloisTheoryPackage O) (E : GaloisTheoryEvidence O G) :
    GaloisTheoryClosed O G := by
  exact And.intro E.frobeniusAutomorphismClosed
    (And.intro E.fixedFieldOfAutomorphismClosed
      (And.intro E.galoisGroupCyclicClosed E.intermediateFieldsClassifiedClosed))

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse