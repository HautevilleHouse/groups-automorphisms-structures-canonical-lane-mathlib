import canonicalLaneMathlib.AdmissibleClass
import GroupsAutomorphismsStructuresCanonicalLaneLean.CanonicalAction

/-!
# Structure Preservation Package
-/

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure StructurePreservationPackage {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} {C : CanonicalActionPackage A}
    (Act : CanonicalActionEvidence C) where
  algebraPreserved : Prop
  orderPreserved : Prop
  topologyPreserved : Prop
  measurePreserved : Prop
  invariantsRecorded : Prop

structure StructurePreservationEvidence {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} {C : CanonicalActionPackage A}
    {Act : CanonicalActionEvidence C}
    (S : StructurePreservationPackage Act) where
  algebraPreservedClosed : S.algebraPreserved
  orderPreservedClosed : S.orderPreserved
  topologyPreservedClosed : S.topologyPreserved
  measurePreservedClosed : S.measurePreserved
  invariantsRecordedClosed : S.invariantsRecorded

def StructurePreservationClosed {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} {C : CanonicalActionPackage A}
    {Act : CanonicalActionEvidence C}
    (S : StructurePreservationPackage Act) : Prop :=
  S.algebraPreserved ∧ S.orderPreserved ∧ S.topologyPreserved ∧
  S.measurePreserved ∧ S.invariantsRecorded

theorem structure_preservation_closed_from_evidence {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} {C : CanonicalActionPackage A}
    {Act : CanonicalActionEvidence C} (S : StructurePreservationPackage Act)
    (E : StructurePreservationEvidence S) : StructurePreservationClosed S := by
  exact And.intro E.algebraPreservedClosed
    (And.intro E.orderPreservedClosed
      (And.intro E.topologyPreservedClosed
        (And.intro E.measurePreservedClosed E.invariantsRecordedClosed)))

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
