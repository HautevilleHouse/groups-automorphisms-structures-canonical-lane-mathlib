import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.AutomorphismGroupStructure

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure AutomorphismActionPackage (G : Type u) [Group G] {A : AutomorphismGroupPackage G} where
  orbitStructure : Type v
  stabilizerSubgroup : G → Subgroup G
  orbitStabilizerTheorem : Prop
  actionOnCosets : Prop

structure AutomorphismActionEvidence (G : Type u) [Group G] {A : AutomorphismGroupPackage G}
    (Act : AutomorphismActionPackage G A) where
  orbitStabilizerTheoremClosed : Act.orbitStabilizerTheorem
  actionOnCosetsClosed : Act.actionOnCosets

def AutomorphismActionClosed (G : Type u) [Group G] {A : AutomorphismGroupPackage G}
    (Act : AutomorphismActionPackage G A) : Prop :=
  Act.orbitStabilizerTheorem ∧ Act.actionOnCosets

theorem automorphism_action_closed_from_evidence (G : Type u) [Group G] {A : AutomorphismGroupPackage G}
    (Act : AutomorphismActionPackage G A) (E : AutomorphismActionEvidence Act) :
    AutomorphismActionClosed Act := by
  exact And.intro E.orbitStabilizerTheoremClosed E.actionOnCosetsClosed

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse
