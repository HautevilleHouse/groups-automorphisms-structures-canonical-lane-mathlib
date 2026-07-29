import canonicalLaneMathlib.GroupActionComplete

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure AutomorphismStructure where
  group : Type
  automorphismGroup : Type
  innerAutomorphismEmbedding : automorphismGroup → automorphismGroup
  completeness : Prop
  completenessTerm : completeness

theorem automorphism_structure_closed (A : AutomorphismStructure) :
    completeness A := by
  exact A.completenessTerm

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse