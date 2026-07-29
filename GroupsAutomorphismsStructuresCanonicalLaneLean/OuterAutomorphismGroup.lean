import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.InnerAutomorphismStructure

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure OuterAutomorphismGroup (G : GroupAutomorphismPackage) where
  inner : InnerAutomorphismStructure G
  quotientGroupCarrier : Type u
  quotientMul : quotientGroupCarrier → quotientGroupCarrier → quotientGroupCarrier
  quotientInv : quotientGroupCarrier → quotientGroupCarrier
  quotientId : quotientGroupCarrier
  quotientGroupAssoc : ∀ a b c : quotientGroupCarrier, quotientMul (quotientMul a b) c = quotientMul a (quotientMul b c)
  quotientIdLeft : ∀ a : quotientGroupCarrier, quotientMul quotientId a = a
  quotientIdRight : ∀ a : quotientGroupCarrier, quotientMul a quotientId = a
  quotientInvLeft : ∀ a : quotientGroupCarrier, quotientMul (quotientInv a) a = quotientId
  outerAutomorphismMap : G.groupCarrier → quotientGroupCarrier
  outerMapPreservesMul : ∀ a b : G.groupCarrier, outerAutomorphismMap (G.groupMul a b) = quotientMul (outerAutomorphismMap a) (outerAutomorphismMap b)
  quotientMapSurjective : Prop
  kernelIsInner : Prop

structure OuterAutomorphismEvidence {G : GroupAutomorphismPackage} (Out : OuterAutomorphismGroup G) where
  quotientMapSurjectiveClosed : Out.quotientMapSurjective
  kernelIsInnerClosed : Out.kernelIsInner

def OuterAutomorphismClosed {G : GroupAutomorphismPackage} (Out : OuterAutomorphismGroup G) : Prop :=
  Out.quotientMapSurjective ∧ Out.kernelIsInner

theorem outer_automorphism_closed_from_evidence {G : GroupAutomorphismPackage} (Out : OuterAutomorphismGroup G) (E : OuterAutomorphismEvidence Out) :
    OuterAutomorphismClosed Out := by
  exact And.intro E.quotientMapSurjectiveClosed E.kernelIsInnerClosed

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
