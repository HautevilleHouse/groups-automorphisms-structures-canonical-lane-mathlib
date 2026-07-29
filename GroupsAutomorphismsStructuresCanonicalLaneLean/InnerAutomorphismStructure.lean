import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.GroupAutomorphismPackage

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure InnerAutomorphismStructure (G : GroupAutomorphismPackage) where
  conjugatingElement : G.groupCarrier
  innerMap : G.groupCarrier → G.groupCarrier := λ x => G.groupMul (G.groupMul conjugatingElement x) (G.groupInv conjugatingElement)
  innerMapPreservesMul : ∀ a b : G.groupCarrier, innerMap (G.groupMul a b) = G.groupMul (innerMap a) (innerMap b) := by
    intro a b
    calc
      G.groupMul (G.groupMul conjugatingElement (G.groupMul a b)) (G.groupInv conjugatingElement)
          = G.groupMul (G.groupMul (G.groupMul conjugatingElement a) b) (G.groupInv conjugatingElement) := by simp [G.groupAssoc]
      _ = G.groupMul (G.groupMul conjugatingElement a) (G.groupMul b (G.groupInv conjugatingElement)) := by simp [G.groupAssoc]
      _ = G.groupMul (G.groupMul conjugatingElement a) (G.groupInv conjugatingElement) := ?_  -- incomplete
      _ = G.groupMul (innerMap a) (innerMap b) := rfl
  innerAutomorphismGroup : Type u := G.groupCarrier  -- placeholder
  innerAutomorphismMul : innerAutomorphismGroup → innerAutomorphismGroup → innerAutomorphismGroup := G.groupMul
  innerAutomorphismInv : innerAutomorphismGroup → innerAutomorphismGroup := G.groupInv
  innerAutomorphismId : innerAutomorphismGroup := G.groupId
  innerAutomorphismIsNormal : Prop

structure InnerAutomorphismEvidence {G : GroupAutomorphismPackage} (I : InnerAutomorphismStructure G) where
  innerAutomorphismIsNormalClosed : I.innerAutomorphismIsNormal

def InnerAutomorphismClosed {G : GroupAutomorphismPackage} (I : InnerAutomorphismStructure G) : Prop :=
  I.innerAutomorphismIsNormal

theorem inner_automorphism_closed_from_evidence {G : GroupAutomorphismPackage} (I : InnerAutomorphismStructure G) (E : InnerAutomorphismEvidence I) :
    InnerAutomorphismClosed I := by
  exact E.innerAutomorphismIsNormalClosed

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
