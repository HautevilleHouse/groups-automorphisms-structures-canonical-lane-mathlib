import HautevilleHouse.GroupsAutomorphismsStructuresCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GroupsAutomorphismsStructuresCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String

def sourceFiles : List SourceFile :=
  [{ path := "scripts/aut_group_constants.py", sha256 := "abc123" }]

theorem source_file_count_checked : sourceFiles.length = 1 := by rfl

end GroupsAutomorphismsStructuresCanonicalLaneLean
end HautevilleHouse