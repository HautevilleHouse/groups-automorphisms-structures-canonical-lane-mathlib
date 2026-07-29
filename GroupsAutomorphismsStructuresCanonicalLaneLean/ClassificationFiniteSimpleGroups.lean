import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.GroupAutomorphismPackage

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure ClassificationFiniteSimpleGroups where
  finiteSimpleGroupList : List Type  -- placeholder
  everyFiniteSimpleGroupIsInList : Prop
  classificationComplete : Prop
  automorphismGroupOfSimpleKnown : Prop

structure ClassificationFiniteSimpleGroupsEvidence (C : ClassificationFiniteSimpleGroups) where
  classificationCompleteClosed : C.classificationComplete
  automorphismGroupOfSimpleKnownClosed : C.automorphismGroupOfSimpleKnown

def ClassificationFiniteSimpleGroupsClosed (C : ClassificationFiniteSimpleGroups) : Prop :=
  C.classificationComplete ∧ C.automorphismGroupOfSimpleKnown

theorem classification_finite_simple_groups_closed_from_evidence (C : ClassificationFiniteSimpleGroups) (E : ClassificationFiniteSimpleGroupsEvidence C) :
    ClassificationFiniteSimpleGroupsClosed C := by
  exact And.intro E.classificationCompleteClosed E.automorphismGroupOfSimpleKnownClosed

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
