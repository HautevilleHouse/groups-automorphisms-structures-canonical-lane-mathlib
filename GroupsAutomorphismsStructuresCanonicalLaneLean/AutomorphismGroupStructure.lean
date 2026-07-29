import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure AutomorphismGroupPackage (G : Type u) [Group G] where
  automorphismGroup : Type v
  automorphismGroupMultiplication : automorphismGroup → automorphismGroup → automorphismGroup
  automorphismGroupIdentity : automorphismGroup
  automorphismGroupInverse : automorphismGroup → automorphismGroup
  groupLaws : Group automorphismGroup
  automorphismAction : automorphismGroup → G → G
  actionCompatibleWithMultiplication : Prop
  kernelIsNormal : Prop
  innerAutomorphismSubgroup : Prop

structure AutomorphismGroupEvidence (G : Type u) [Group G] (A : AutomorphismGroupPackage G) where
  actionCompatibleWithMultiplicationClosed : A.actionCompatibleWithMultiplication
  kernelIsNormalClosed : A.kernelIsNormal
  innerAutomorphismSubgroupClosed : A.innerAutomorphismSubgroup

def AutomorphismGroupClosed (G : Type u) [Group G] (A : AutomorphismGroupPackage G) : Prop :=
  A.actionCompatibleWithMultiplication ∧ A.kernelIsNormal ∧ A.innerAutomorphismSubgroup

theorem automorphism_group_closed_from_evidence (G : Type u) [Group G] (A : AutomorphismGroupPackage G)
    (E : AutomorphismGroupEvidence A) : AutomorphismGroupClosed A := by
  exact And.intro E.actionCompatibleWithMultiplicationClosed
    (And.intro E.kernelIsNormalClosed E.innerAutomorphismSubgroupClosed)

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
