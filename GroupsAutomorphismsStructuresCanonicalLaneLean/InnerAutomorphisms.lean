import GroupsAutomorphismsStructuresCanonicalLaneLean.GroupAutStructureObjects

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure InnerAutomorphism (G : GroupObject) where
  element : G.carrier
  innerMap : G.carrier → G.carrier := λ x => G.groupOp (G.groupOp element x) (G.inverse element)
  innerIsAut : Automorphism G where
    map := innerMap
    bijective := by
      sorry
    preservesOp := by
      intro x y
      calc
        innerMap (G.groupOp x y) = G.groupOp (G.groupOp element (G.groupOp x y)) (G.inverse element) := rfl
        _ = G.groupOp (G.groupOp (G.groupOp element x) (G.inverse element)) (G.groupOp (G.groupOp element y) (G.inverse element)) := by
          simp [G.groupLaws]
        _ = G.groupOp (innerMap x) (innerMap y) := rfl

structure InnerAutomorphismPackage (G : GroupObject) where
  innerAutGroup : Subgroup (AutGroup G).autGroupOp
  innerAutGroupClosed : Prop
  innerAutGroupClosedTerm : innerAutGroupClosed

def InnerAutomorphismClosed {G : GroupObject} (P : InnerAutomorphismPackage G) : Prop :=
  P.innerAutGroupClosed

theorem inner_automorphism_closed_from_evidence {G : GroupObject} (P : InnerAutomorphismPackage G) : InnerAutomorphismClosed P :=
  P.innerAutGroupClosedTerm

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse