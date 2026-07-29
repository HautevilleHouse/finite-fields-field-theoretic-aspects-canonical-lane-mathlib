import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean

structure FiniteFieldAdmittedObject where
  field : Type
  characteristic : ℕ
  cardinality : ℕ
  fieldStructure : Field field
  algebraicClosure : Type
  automorphismGroup : Type
  conclusion : Prop

def FiniteFieldWitnessClosed (O : FiniteFieldAdmittedObject) : Prop :=
  O.conclusion

end FiniteFieldsFieldTheoreticAspectsCanonicalLaneLean
end HautevilleHouse