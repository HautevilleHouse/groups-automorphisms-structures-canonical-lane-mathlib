import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure GroupActionComplete (A : AdmissibleClass) : Prop where
  actionComplete : Prop
  actionCompleteTerm : actionComplete

structure AdmittedObject where
  group : Type
  action : group → group → group
  groupActionComplete : Prop
  conclusion : groupActionComplete

theorem admitted_object_complete (O : AdmittedObject) : groupActionComplete O := by
  exact O.conclusion

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse