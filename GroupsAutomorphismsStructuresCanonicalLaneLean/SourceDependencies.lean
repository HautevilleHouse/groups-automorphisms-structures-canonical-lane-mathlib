import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure SourceImportDependency where
  file : String
  module : String

def sourceImportDependencies : List SourceImportDependency :=
  [{ file := "scripts/aut_group_constants.py", module := "math" }]

def sourceImportDependencyCount : Nat := 1

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 1 := by rfl

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse