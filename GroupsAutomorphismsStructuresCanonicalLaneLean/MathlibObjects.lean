import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.TheoremStatement
import Mathlib.GroupTheory.Subgroup
import Mathlib.GroupTheory.Automorphism

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure GroupAutSpace where
  carrier : Type
  group : Group carrier

structure GroupAutAdmittedObject where
  space : GroupAutSpace
  automorphismGroupComplete : Prop
  innerAutomorphismGroupNormal : Prop
  outerAutomorphismGroupFinite : Prop
  conclusion : automorphismGroupComplete ∧ innerAutomorphismGroupNormal ∧ outerAutomorphismGroupFinite

structure GroupAutEndgameState where
  object : GroupAutAdmittedObject

def GroupAutWitnessClosed (O : GroupAutAdmittedObject) : Prop :=
  O.automorphismGroupComplete ∧ O.innerAutomorphismGroupNormal ∧ O.outerAutomorphismGroupFinite

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse