import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure GaloisGroupPackage (A : AdmissibleClass) where
  automorphismGroup : Set (A.object.fieldCarrier → A.object.fieldCarrier)
  groupOperations : Prop
  orderIsDegree : Prop
  cyclicStructure : Prop

structure GaloisGroupEvidence (A : AdmissibleClass) (G : GaloisGroupPackage A) where
  groupOperationsClosed : G.groupOperations
  orderIsDegreeClosed : G.orderIsDegree
  cyclicStructureClosed : G.cyclicStructure

def GaloisGroupClosed (A : AdmissibleClass) (G : GaloisGroupPackage A) : Prop :=
  G.groupOperations ∧ G.orderIsDegree ∧ G.cyclicStructure

theorem galois_group_closed (A : AdmissibleClass) (G : GaloisGroupPackage A)
    (E : GaloisGroupEvidence A G) : GaloisGroupClosed A G := by
  exact And.intro E.groupOperationsClosed (And.intro E.orderIsDegreeClosed E.cyclicStructureClosed)

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse