import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

def ConstrainedAutomorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_automorphism_endgame (A : AdmissibleClass) :
    ConstrainedAutomorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
