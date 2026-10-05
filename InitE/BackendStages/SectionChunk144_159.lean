import InitE.BackendStages.NamedChunk144_159
import InitE.BackendStages.Section144
import InitE.BackendStages.Section145
import InitE.BackendStages.Section146
import InitE.BackendStages.Section147
import InitE.BackendStages.Section148
import InitE.BackendStages.Section149
import InitE.BackendStages.Section150
import InitE.BackendStages.Section151
import InitE.BackendStages.Section152
import InitE.BackendStages.Section153
import InitE.BackendStages.Section154
import InitE.BackendStages.Section155
import InitE.BackendStages.Section156
import InitE.BackendStages.Section157
import InitE.BackendStages.Section158
import InitE.BackendStages.Section159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk144_159
def sections : LabSem.LabProgHOL 64 := [section144, section145, section146, section147, section148, section149, section150, section151, section152, section153, section154, section155, section156, section157, section158, section159]
theorem compiled_eq : NamedChunk144_159.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named144, StackToLab.progToSectionHOL Named145, StackToLab.progToSectionHOL Named146, StackToLab.progToSectionHOL Named147, StackToLab.progToSectionHOL Named148, StackToLab.progToSectionHOL Named149, StackToLab.progToSectionHOL Named150, StackToLab.progToSectionHOL Named151, StackToLab.progToSectionHOL Named152, StackToLab.progToSectionHOL Named153, StackToLab.progToSectionHOL Named154, StackToLab.progToSectionHOL Named155, StackToLab.progToSectionHOL Named156, StackToLab.progToSectionHOL Named157, StackToLab.progToSectionHOL Named158, StackToLab.progToSectionHOL Named159] = sections
  rw [section144_eq, section145_eq, section146_eq, section147_eq, section148_eq, section149_eq, section150_eq, section151_eq, section152_eq, section153_eq, section154_eq, section155_eq, section156_eq, section157_eq, section158_eq, section159_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk144_159
