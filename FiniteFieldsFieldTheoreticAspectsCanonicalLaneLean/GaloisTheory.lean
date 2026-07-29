import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure GaloisTheoryPackage where
  automorphismGroup : Type
  fixedField : Type
  frobeniusEndomorphism : Prop
  galoisCorrespondence : Prop
  separableClosure : Prop
  frobeniusEndomorphismTerm : frobeniusEndomorphism
  galoisCorrespondenceTerm : galoisCorrespondence
  separableClosureTerm : separableClosure

def GaloisTheoryClosed (G : GaloisTheoryPackage) : Prop :=
  G.frobeniusEndomorphism ∧ G.galoisCorrespondence ∧ G.separableClosure

theorem galois_theory_closed_from_evidence (G : GaloisTheoryPackage) : GaloisTheoryClosed G :=
  And.intro G.frobeniusEndomorphismTerm (And.intro G.galoisCorrespondenceTerm G.separableClosureTerm)

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse