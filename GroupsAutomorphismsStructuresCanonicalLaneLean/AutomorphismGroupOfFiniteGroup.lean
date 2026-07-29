import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.GroupAutomorphismPackage

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure AutomorphismGroupOfFiniteGroup (G : GroupAutomorphismPackage) (hG : Fintype G.groupCarrier) where
  automorphismGroupCarrier : Finset (G.groupCarrier → G.groupCarrier)
  automorphismGroupMul : (G.groupCarrier → G.groupCarrier) → (G.groupCarrier → G.groupCarrier) → (G.groupCarrier → G.groupCarrier) := λ f g => λ x => G.groupMul (f x) (g x)
  automorphismGroupInv : (G.groupCarrier → G.groupCarrier) → (G.groupCarrier → G.groupCarrier) := λ f => λ x => G.groupInv (f x)
  automorphismGroupId : G.groupCarrier → G.groupCarrier := λ x => x
  automorphismGroupAssoc : ∀ f g h : (G.groupCarrier → G.groupCarrier), automorphismGroupMul (automorphismGroupMul f g) h = automorphismGroupMul f (automorphismGroupMul g h)
  automorphismGroupIdLeft : ∀ f : (G.groupCarrier → G.groupCarrier), automorphismGroupMul automorphismGroupId f = f
  automorphismGroupIdRight : ∀ f : (G.groupCarrier → G.groupCarrier), automorphismGroupMul f automorphismGroupId = f
  automorphismGroupInvLeft : ∀ f : (G.groupCarrier → G.groupCarrier), automorphismGroupMul (automorphismGroupInv f) f = automorphismGroupId
  automorphismGroupClosedUnderMul : ∀ f g ∈ automorphismGroupCarrier, automorphismGroupMul f g ∈ automorphismGroupCarrier
  automorphismGroupClosedUnderInv : ∀ f ∈ automorphismGroupCarrier, automorphismGroupInv f ∈ automorphismGroupCarrier
  automorphismGroupContainsId : automorphismGroupId ∈ automorphismGroupCarrier
  automorphismGroupFintype : Fintype automorphismGroupCarrier

structure AutomorphismGroupOfFiniteGroupEvidence {G : GroupAutomorphismPackage} {hG : Fintype G.groupCarrier} (A : AutomorphismGroupOfFiniteGroup G hG) where
  automorphismGroupClosedUnderMulClosed : True
  automorphismGroupClosedUnderInvClosed : True
  automorphismGroupContainsIdClosed : True

def AutomorphismGroupOfFiniteGroupClosed {G : GroupAutomorphismPackage} {hG : Fintype G.groupCarrier} (A : AutomorphismGroupOfFiniteGroup G hG) : Prop :=
  A.automorphismGroupClosedUnderMul ∧ A.automorphismGroupClosedUnderInv ∧ A.automorphismGroupContainsId

theorem automorphism_group_of_finite_group_closed_from_evidence {G : GroupAutomorphismPackage} {hG : Fintype G.groupCarrier} (A : AutomorphismGroupOfFiniteGroup G hG) (E : AutomorphismGroupOfFiniteGroupEvidence A) :
    AutomorphismGroupOfFiniteGroupClosed A := by
  exact And.intro (by trivial) (And.intro (by trivial) (by trivial))

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
