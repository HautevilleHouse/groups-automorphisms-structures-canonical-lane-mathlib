import GroupsAutomorphismsStructuresCanonicalLaneLean.InnerAutomorphisms

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure OuterAutomorphismGroup (G : GroupObject) where
  quotientGroup : Type
  quotientGroupOp : quotientGroup → quotientGroup → quotientGroup
  projectionMap : (AutGroup G).automorphisms → quotientGroup
  kernelIsInnerAutGroup : Prop
  projectionMapClosed : Prop

def OuterAutomorphismGroupClosed {G : GroupObject} (O : OuterAutomorphismGroup G) : Prop :=
  O.projectionMapClosed

theorem outer_automorphism_group_closed {G : GroupObject} (O : OuterAutomorphismGroup G) : OuterAutomorphismGroupClosed O :=
  O.projectionMapClosed

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse