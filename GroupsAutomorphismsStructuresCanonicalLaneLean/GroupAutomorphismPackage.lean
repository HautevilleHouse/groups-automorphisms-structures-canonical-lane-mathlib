import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure GroupAutomorphismPackage where
  groupCarrier : Type u
  groupMul : groupCarrier → groupCarrier → groupCarrier
  groupInv : groupCarrier → groupCarrier
  groupId : groupCarrier
  groupAssoc : ∀ a b c : groupCarrier, groupMul (groupMul a b) c = groupMul a (groupMul b c)
  groupIdLeft : ∀ a : groupCarrier, groupMul groupId a = a
  groupIdRight : ∀ a : groupCarrier, groupMul a groupId = a
  groupInvLeft : ∀ a : groupCarrier, groupMul (groupInv a) a = groupId
  automorphismMap : groupCarrier → groupCarrier  -- placeholder
  automorphismPreservesMul : ∀ a b : groupCarrier, automorphismMap (groupMul a b) = groupMul (automorphismMap a) (automorphismMap b)
  automorphismInvertible : Prop
  
structure GroupAutomorphismEvidence (G : GroupAutomorphismPackage) where
  automorphismInvertibleClosed : G.automorphismInvertible

def GroupAutomorphismClosed (G : GroupAutomorphismPackage) : Prop :=
  G.automorphismInvertible

theorem group_automorphism_closed_from_evidence (G : GroupAutomorphismPackage) (E : GroupAutomorphismEvidence G) :
    GroupAutomorphismClosed G := by
  exact E.automorphismInvertibleClosed

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
