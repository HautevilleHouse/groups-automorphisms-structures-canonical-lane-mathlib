import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.AutomorphismGroupStructure

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure InnerAutomorphismPackage (G : Type u) [Group G] (A : AutomorphismGroupPackage G) where
  conjugationMap : G → A.automorphismGroup
  innerAutomorphismGroup : Subgroup A.automorphismGroup
  normalSubgroup : Prop
  innerAutomorphismGroupIsNormal : A.innerAutomorphismSubgroup
  innerAutomorphismGroupClosed : innerAutomorphismGroup = A.innerAutomorphismSubgroup

structure InnerAutomorphismEvidence (G : Type u) [Group G] {A : AutomorphismGroupPackage G}
    (I : InnerAutomorphismPackage G A) where
  conjugationMapClosed : I.conjugationMap = I.conjugationMap
  innerAutomorphismGroupIsNormalClosed : I.innerAutomorphismGroupIsNormal

def InnerAutomorphismClosed (G : Type u) [Group G] {A : AutomorphismGroupPackage G}
    (I : InnerAutomorphismPackage G A) : Prop :=
  I.innerAutomorphismGroupIsNormal ∧ I.innerAutomorphismGroupClosed

theorem inner_automorphism_closed_from_evidence (G : Type u) [Group G] {A : AutomorphismGroupPackage G}
    (I : InnerAutomorphismPackage G A) (E : InnerAutomorphismEvidence I) :
    InnerAutomorphismClosed I := by
  exact And.intro E.innerAutomorphismGroupIsNormalClosed I.innerAutomorphismGroupClosed

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
