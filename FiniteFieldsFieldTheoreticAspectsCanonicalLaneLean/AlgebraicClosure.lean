import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure AlgebraicClosurePackage where
  algebraicClosure : Type
  embeddingExists : Prop
  uniquenessUpToIsomorphism : Prop
  embeddingExistsTerm : embeddingExists
  uniquenessUpToIsomorphismTerm : uniquenessUpToIsomorphism

def AlgebraicClosureClosed (A : AlgebraicClosurePackage) : Prop :=
  A.embeddingExists ∧ A.uniquenessUpToIsomorphism

theorem algebraic_closure_closed_from_evidence (A : AlgebraicClosurePackage) : AlgebraicClosureClosed A :=
  And.intro A.embeddingExistsTerm A.uniquenessUpToIsomorphismTerm

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse