import InitE.BackendStages.NamedChunk112_127
import InitE.BackendStages.Section112
import InitE.BackendStages.Section113
import InitE.BackendStages.Section114
import InitE.BackendStages.Section115
import InitE.BackendStages.Section116
import InitE.BackendStages.Section117
import InitE.BackendStages.Section118
import InitE.BackendStages.Section119
import InitE.BackendStages.Section120
import InitE.BackendStages.Section121
import InitE.BackendStages.Section122
import InitE.BackendStages.Section123
import InitE.BackendStages.Section124
import InitE.BackendStages.Section125
import InitE.BackendStages.Section126
import InitE.BackendStages.Section127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk112_127
def sections : LabSem.LabProgHOL 64 := [section112, section113, section114, section115, section116, section117, section118, section119, section120, section121, section122, section123, section124, section125, section126, section127]
theorem compiled_eq : NamedChunk112_127.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named112, StackToLab.progToSectionHOL Named113, StackToLab.progToSectionHOL Named114, StackToLab.progToSectionHOL Named115, StackToLab.progToSectionHOL Named116, StackToLab.progToSectionHOL Named117, StackToLab.progToSectionHOL Named118, StackToLab.progToSectionHOL Named119, StackToLab.progToSectionHOL Named120, StackToLab.progToSectionHOL Named121, StackToLab.progToSectionHOL Named122, StackToLab.progToSectionHOL Named123, StackToLab.progToSectionHOL Named124, StackToLab.progToSectionHOL Named125, StackToLab.progToSectionHOL Named126, StackToLab.progToSectionHOL Named127] = sections
  rw [section112_eq, section113_eq, section114_eq, section115_eq, section116_eq, section117_eq, section118_eq, section119_eq, section120_eq, section121_eq, section122_eq, section123_eq, section124_eq, section125_eq, section126_eq, section127_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk112_127
