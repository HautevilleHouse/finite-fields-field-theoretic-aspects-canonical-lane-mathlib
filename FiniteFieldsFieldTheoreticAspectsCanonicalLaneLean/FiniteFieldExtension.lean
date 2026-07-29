import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure FiniteFieldExtension (p : ℕ) [Fact p.Prime] where
  fieldType : Type u
  fieldStructure : Field fieldType
  charP : CharP fieldType p
  degree : ℕ
  basis : Fin degree → fieldType
  addCommGroup : AddCommGroup fieldType := by infer_instance
  isField : IsField fieldType
  finiteField : Fintype fieldType

structure ExtensionEvidence {p : ℕ} [Fact p.Prime] (E : FiniteFieldExtension p) where
  degreePos : E.degree > 0
  basisLinearIndependent : LinearIndependent (Fin E.degree) E.basis
  basisSpanning : Submodule.span ℤ (Set.range E.basis) = ⊤
  fieldExtension : IsField E.fieldType

def ExtensionClosed {p : ℕ} [Fact p.Prime] (E : FiniteFieldExtension p) : Prop :=
  E.degree > 0 ∧ IsField E.fieldType ∧ Fintype E.fieldType

theorem extension_closed_from_evidence {p : ℕ} [Fact p.Prime] (E : FiniteFieldExtension p)
    (ev : ExtensionEvidence E) : ExtensionClosed E := by
  exact And.intro ev.degreePos (And.intro ev.fieldExtension (by infer_instance))

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse