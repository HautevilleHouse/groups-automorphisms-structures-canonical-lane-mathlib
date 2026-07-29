import GroupsAutomorphismsStructuresCanonicalLaneLean.OuterAutomorphisms

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure GroupAction (G : GroupObject) (X : Type) where
  actionMap : G.carrier → X → X
  actionLaws : Prop

structure AutomorphismGroupAction (G : GroupObject) where
  actionOnGroup : GroupAction G G.carrier
  actionOnAutGroup : GroupAction (AutGroup G).autGroupOps (AutGroup G).automorphisms
  compatibility : Prop
  actionClosed : Prop
  actionClosedTerm : actionClosed

def AutomorphismGroupActionClosed {G : GroupObject} (A : AutomorphismGroupAction G) : Prop :=
  A.actionClosed

theorem automorphism_group_action_closed {G : GroupObject} (A : AutomorphismGroupAction G) : AutomorphismGroupActionClosed A :=
  A.actionClosedTerm

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse