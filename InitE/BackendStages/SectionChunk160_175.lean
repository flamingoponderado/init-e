import InitE.BackendStages.NamedChunk160_175
import InitE.BackendStages.Section160
import InitE.BackendStages.Section161
import InitE.BackendStages.Section162
import InitE.BackendStages.Section163
import InitE.BackendStages.Section164
import InitE.BackendStages.Section165
import InitE.BackendStages.Section166
import InitE.BackendStages.Section167
import InitE.BackendStages.Section168
import InitE.BackendStages.Section169
import InitE.BackendStages.Section170
import InitE.BackendStages.Section171
import InitE.BackendStages.Section172
import InitE.BackendStages.Section173
import InitE.BackendStages.Section174
import InitE.BackendStages.Section175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk160_175
def sections : LabSem.LabProgHOL 64 := [section160, section161, section162, section163, section164, section165, section166, section167, section168, section169, section170, section171, section172, section173, section174, section175]
theorem compiled_eq : NamedChunk160_175.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named160, StackToLab.progToSectionHOL Named161, StackToLab.progToSectionHOL Named162, StackToLab.progToSectionHOL Named163, StackToLab.progToSectionHOL Named164, StackToLab.progToSectionHOL Named165, StackToLab.progToSectionHOL Named166, StackToLab.progToSectionHOL Named167, StackToLab.progToSectionHOL Named168, StackToLab.progToSectionHOL Named169, StackToLab.progToSectionHOL Named170, StackToLab.progToSectionHOL Named171, StackToLab.progToSectionHOL Named172, StackToLab.progToSectionHOL Named173, StackToLab.progToSectionHOL Named174, StackToLab.progToSectionHOL Named175] = sections
  rw [section160_eq, section161_eq, section162_eq, section163_eq, section164_eq, section165_eq, section166_eq, section167_eq, section168_eq, section169_eq, section170_eq, section171_eq, section172_eq, section173_eq, section174_eq, section175_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk160_175
