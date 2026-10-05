import InitE.AllocationOracles.Chunk000
import InitE.AllocationOracles.Chunk001
import InitE.AllocationOracles.Chunk002
import InitE.AllocationOracles.Chunk003
import InitE.AllocationOracles.Chunk004
import InitE.AllocationOracles.Chunk005
import InitE.AllocationOracles.Chunk006
import InitE.AllocationOracles.Chunk007
import InitE.AllocationOracles.Chunk008
import InitE.AllocationOracles.Chunk009
import InitE.AllocationOracles.Chunk010
import InitE.AllocationOracles.Chunk011
import InitE.AllocationOracles.Chunk012
import InitE.AllocationOracles.Chunk013
import InitE.AllocationOracles.Chunk014
import InitE.AllocationOracles.Chunk015
import InitE.AllocationOracles.Chunk016
import InitE.AllocationOracles.Chunk017
import InitE.AllocationOracles.Chunk018
import InitE.AllocationOracles.Chunk019
import InitE.AllocationOracles.Chunk020
import InitE.AllocationOracles.Chunk021
import InitE.AllocationOracles.Chunk022
import InitE.AllocationOracles.Chunk023
import InitE.AllocationOracles.Chunk024
import InitE.AllocationOracles.Chunk025
import InitE.AllocationOracles.Chunk026
import InitE.AllocationOracles.Chunk027
import InitE.AllocationOracles.Chunk028
import InitE.AllocationOracles.Chunk029
import InitE.AllocationOracles.Chunk030
import InitE.AllocationOracles.Chunk031
import InitE.AllocationOracles.Chunk032
import InitE.AllocationOracles.Chunk033
import InitE.AllocationOracles.Chunk034
import InitE.AllocationOracles.Chunk035
import InitE.AllocationOracles.Chunk036
import InitE.AllocationOracles.Chunk037
import InitE.AllocationOracles.Chunk038
import InitE.AllocationOracles.Chunk039
import InitE.AllocationOracles.Chunk040
import InitE.AllocationOracles.Chunk041
import InitE.AllocationOracles.Chunk042
import InitE.AllocationOracles.Chunk043
import InitE.AllocationOracles.Chunk044
import InitE.AllocationOracles.Chunk045
import InitE.AllocationOracles.Chunk046
import InitE.AllocationOracles.Chunk047
import InitE.AllocationOracles.Chunk048
import InitE.AllocationOracles.Chunk049
import InitE.AllocationOracles.Chunk050
import InitE.AllocationOracles.Chunk051

namespace InitE
-- Proposed colorings; the compiler validates each before using it.
def allocationOracles : List (Option (Flapjack.Spt Nat)) :=
  [AllocationOracles.chunk000, AllocationOracles.chunk001, AllocationOracles.chunk002, AllocationOracles.chunk003, AllocationOracles.chunk004, AllocationOracles.chunk005, AllocationOracles.chunk006, AllocationOracles.chunk007, AllocationOracles.chunk008, AllocationOracles.chunk009, AllocationOracles.chunk010, AllocationOracles.chunk011, AllocationOracles.chunk012, AllocationOracles.chunk013, AllocationOracles.chunk014, AllocationOracles.chunk015, AllocationOracles.chunk016, AllocationOracles.chunk017, AllocationOracles.chunk018, AllocationOracles.chunk019, AllocationOracles.chunk020, AllocationOracles.chunk021, AllocationOracles.chunk022, AllocationOracles.chunk023, AllocationOracles.chunk024, AllocationOracles.chunk025, AllocationOracles.chunk026, AllocationOracles.chunk027, AllocationOracles.chunk028, AllocationOracles.chunk029, AllocationOracles.chunk030, AllocationOracles.chunk031, AllocationOracles.chunk032, AllocationOracles.chunk033, AllocationOracles.chunk034, AllocationOracles.chunk035, AllocationOracles.chunk036, AllocationOracles.chunk037, AllocationOracles.chunk038, AllocationOracles.chunk039, AllocationOracles.chunk040, AllocationOracles.chunk041, AllocationOracles.chunk042, AllocationOracles.chunk043, AllocationOracles.chunk044, AllocationOracles.chunk045, AllocationOracles.chunk046, AllocationOracles.chunk047, AllocationOracles.chunk048, AllocationOracles.chunk049, AllocationOracles.chunk050, AllocationOracles.chunk051].flatten

theorem allocationOracles_length : allocationOracles.length = 826 := by
  simp only [allocationOracles, List.length_flatten, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil,
    AllocationOracles.chunk000_length, AllocationOracles.chunk001_length, AllocationOracles.chunk002_length, AllocationOracles.chunk003_length, AllocationOracles.chunk004_length, AllocationOracles.chunk005_length, AllocationOracles.chunk006_length, AllocationOracles.chunk007_length, AllocationOracles.chunk008_length, AllocationOracles.chunk009_length, AllocationOracles.chunk010_length, AllocationOracles.chunk011_length, AllocationOracles.chunk012_length, AllocationOracles.chunk013_length, AllocationOracles.chunk014_length, AllocationOracles.chunk015_length, AllocationOracles.chunk016_length, AllocationOracles.chunk017_length, AllocationOracles.chunk018_length, AllocationOracles.chunk019_length, AllocationOracles.chunk020_length, AllocationOracles.chunk021_length, AllocationOracles.chunk022_length, AllocationOracles.chunk023_length, AllocationOracles.chunk024_length, AllocationOracles.chunk025_length, AllocationOracles.chunk026_length, AllocationOracles.chunk027_length, AllocationOracles.chunk028_length, AllocationOracles.chunk029_length, AllocationOracles.chunk030_length, AllocationOracles.chunk031_length, AllocationOracles.chunk032_length, AllocationOracles.chunk033_length, AllocationOracles.chunk034_length, AllocationOracles.chunk035_length, AllocationOracles.chunk036_length, AllocationOracles.chunk037_length, AllocationOracles.chunk038_length, AllocationOracles.chunk039_length, AllocationOracles.chunk040_length, AllocationOracles.chunk041_length, AllocationOracles.chunk042_length, AllocationOracles.chunk043_length, AllocationOracles.chunk044_length, AllocationOracles.chunk045_length, AllocationOracles.chunk046_length, AllocationOracles.chunk047_length, AllocationOracles.chunk048_length, AllocationOracles.chunk049_length, AllocationOracles.chunk050_length, AllocationOracles.chunk051_length]
  decide
end InitE
