import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure GroupObject where
  carrier : Type
  groupOp : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  groupLaws : Prop

structure Automorphism (G : GroupObject) where
  map : G.carrier → G.carrier
  bijective : Prop
  preservesOp : ∀ x y : G.carrier, map (G.groupOp x y) = G.groupOp (map x) (map y)

structure AutGroup (G : GroupObject) where
  automorphisms : Set (Automorphism G)
  autGroupOp : automorphisms → automorphisms → automorphisms
  autIdentity : automorphisms
  autInverse : automorphisms → automorphisms
  autGroupLaws : Prop

structure AutomorphismStructureObject where
  group : GroupObject
  autGroup : AutGroup group
  structureGroup : Prop
  structureGroupClosed : structureGroup

def AutStructureWitnessClosed (O : AutomorphismStructureObject) : Prop :=
  O.structureGroup

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse