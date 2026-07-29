import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
