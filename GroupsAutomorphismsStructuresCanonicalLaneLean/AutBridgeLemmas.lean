import GroupsAutomorphismsStructuresCanonicalLaneLean.GroupAutStructureObjects

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AutStructureWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse