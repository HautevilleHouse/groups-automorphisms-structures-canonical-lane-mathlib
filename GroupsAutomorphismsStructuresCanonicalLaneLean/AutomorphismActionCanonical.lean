import canonicalLaneMathlib.AdmissibleClass
import GroupsAutomorphismsStructuresCanonicalLaneLean.AutomorphismGroupStructure

/-!
# Canonical Automorphism Action Package
-/

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure CanonicalActionPackage {G : AutomorphismGroupPackage}
    (A : AutomorphismGroupEvidence G) where
  actionDefined : Prop
  actionFaithful : Prop
  actionTransitive : Prop
  stabilizerSubgroup : Prop
  orbitStructure : Prop

structure CanonicalActionEvidence {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} (C : CanonicalActionPackage A) where
  actionDefinedClosed : C.actionDefined
  actionFaithfulClosed : C.actionFaithful
  actionTransitiveClosed : C.actionTransitive
  stabilizerSubgroupClosed : C.stabilizerSubgroup
  orbitStructureClosed : C.orbitStructure

def CanonicalActionClosed {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} (C : CanonicalActionPackage A) : Prop :=
  C.actionDefined ∧ C.actionFaithful ∧ C.actionTransitive ∧
  C.stabilizerSubgroup ∧ C.orbitStructure

theorem canonical_action_closed_from_evidence {G : AutomorphismGroupPackage}
    {A : AutomorphismGroupEvidence G} (C : CanonicalActionPackage A)
    (E : CanonicalActionEvidence C) : CanonicalActionClosed C := by
  exact And.intro E.actionDefinedClosed
    (And.intro E.actionFaithfulClosed
      (And.intro E.actionTransitiveClosed
        (And.intro E.stabilizerSubgroupClosed E.orbitStructureClosed)))

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
