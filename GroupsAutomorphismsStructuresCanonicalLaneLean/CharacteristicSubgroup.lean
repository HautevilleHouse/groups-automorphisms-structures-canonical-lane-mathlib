import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.GroupAutomorphismPackage

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure CharacteristicSubgroup (G : GroupAutomorphismPackage) where
  subgroupCarrier : Set G.groupCarrier
  subgroupClosedUnderMul : ∀ a b ∈ subgroupCarrier, G.groupMul a b ∈ subgroupCarrier
  subgroupContainsId : G.groupId ∈ subgroupCarrier
  subgroupClosedUnderInv : ∀ a ∈ subgroupCarrier, G.groupInv a ∈ subgroupCarrier
  characteristicUnderAut : ∀ (φ : G.groupCarrier → G.groupCarrier), (∀ a b : G.groupCarrier, φ (G.groupMul a b) = G.groupMul (φ a) (φ b)) → ∀ x ∈ subgroupCarrier, φ x ∈ subgroupCarrier
  subgroupIsNormal : Prop

structure CharacteristicSubgroupEvidence {G : GroupAutomorphismPackage} (C : CharacteristicSubgroup G) where
  subgroupIsNormalClosed : C.subgroupIsNormal

def CharacteristicSubgroupClosed {G : GroupAutomorphismPackage} (C : CharacteristicSubgroup G) : Prop :=
  C.subgroupIsNormal

theorem characteristic_subgroup_closed_from_evidence {G : GroupAutomorphismPackage} (C : CharacteristicSubgroup G) (E : CharacteristicSubgroupEvidence C) :
    CharacteristicSubgroupClosed C := by
  exact E.subgroupIsNormalClosed

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
