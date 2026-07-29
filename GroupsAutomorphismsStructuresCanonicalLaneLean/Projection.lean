import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

def groupAutProjection : Projection GroupAutEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem group_aut_projection_idempotent (x : GroupAutEndgameState) :
    groupAutProjection.toFun (groupAutProjection.toFun x) = groupAutProjection.toFun x := by
  exact groupAutProjection.idempotent x

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse