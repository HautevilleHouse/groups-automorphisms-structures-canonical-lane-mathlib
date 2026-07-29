import canonicalLaneMathlib.AdmissibleClass
import GroupsAutomorphismsStructuresCanonicalLaneLean.StructurePreservation

/-!
# Orbit Classification Package
-/

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure OrbitClassificationPackage {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} {C : CanonicalActionPackage A}
    {Act : CanonicalActionEvidence C} {S : StructurePreservationPackage Act}
    (Str : StructurePreservationEvidence S) where
  orbitTypesClassified : Prop
  stabilizerCoclosed : Prop
  invariantSubspaces : Prop
  quotientActionDefined : Prop

structure OrbitClassificationEvidence {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} {C : CanonicalActionPackage A}
    {Act : CanonicalActionEvidence C} {S : StructurePreservationPackage Act}
    {Str : StructurePreservationEvidence S}
    (O : OrbitClassificationPackage Str) where
  orbitTypesClassifiedClosed : O.orbitTypesClassified
  stabilizerCoclosedClosed : O.stabilizerCoclosed
  invariantSubspacesClosed : O.invariantSubspaces
  quotientActionDefinedClosed : O.quotientActionDefined

def OrbitClassificationClosed {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} {C : CanonicalActionPackage A}
    {Act : CanonicalActionEvidence C} {S : StructurePreservationPackage Act}
    {Str : StructurePreservationEvidence S}
    (O : OrbitClassificationPackage Str) : Prop :=
  O.orbitTypesClassified ∧ O.stabilizerCoclosed ∧
  O.invariantSubspaces ∧ O.quotientActionDefined

theorem orbit_classification_closed_from_evidence {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} {C : CanonicalActionPackage A}
    {Act : CanonicalActionEvidence C} {S : StructurePreservationPackage Act}
    {Str : StructurePreservationEvidence S} (O : OrbitClassificationPackage Str)
    (E : OrbitClassificationEvidence O) : OrbitClassificationClosed O := by
  exact And.intro E.orbitTypesClassifiedClosed
    (And.intro E.stabilizerCoclosedClosed
      (And.intro E.invariantSubspacesClosed E.quotientActionDefinedClosed))

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
