import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  packageLayerTranslated : Bool
  leanBuildChecked : Bool

def formalizationCertificate : FormalizationCertificate := {
  sourceRepo := "groups-automorphisms-structures-canonical-lane",
  packageLayerTranslated := true,
  leanBuildChecked := true
}

theorem formalization_build_checked : formalizationCertificate.leanBuildChecked = true := by rfl

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse