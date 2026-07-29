import GroupsAutomorphismsStructuresCanonicalLaneLean.AutomorphismGroupAction

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure EndAutomorphismStructure (G : GroupObject) where
  endomorphismRing : Type
  additiveOp : endomorphismRing → endomorphismRing → endomorphismRing
  multiplicativeOp : endomorphismRing → endomorphismRing → endomorphismRing
  ringLaws : Prop
  autGroupEmbedding : (AutGroup G).automorphisms → endomorphismRing
  embeddingProperties : Prop
  structureClosed : Prop
  structureClosedTerm : structureClosed

def EndAutomorphismStructureClosed {G : GroupObject} (E : EndAutomorphismStructure G) : Prop :=
  E.structureClosed

theorem end_automorphism_structure_closed {G : GroupObject} (E : EndAutomorphismStructure G) : EndAutomorphismStructureClosed E :=
  E.structureClosedTerm

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse