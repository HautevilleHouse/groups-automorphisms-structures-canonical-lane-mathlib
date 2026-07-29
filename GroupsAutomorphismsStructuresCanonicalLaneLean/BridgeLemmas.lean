import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.homeomorphicToSphere

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
