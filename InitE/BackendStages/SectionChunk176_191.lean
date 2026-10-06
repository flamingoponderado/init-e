import InitE.BackendStages.NamedChunk176_191
import InitE.BackendStages.Section176
import InitE.BackendStages.Section177
import InitE.BackendStages.Section178
import InitE.BackendStages.Section179
import InitE.BackendStages.Section180
import InitE.BackendStages.Section181
import InitE.BackendStages.Section182
import InitE.BackendStages.Section183
import InitE.BackendStages.Section184
import InitE.BackendStages.Section185
import InitE.BackendStages.Section186
import InitE.BackendStages.Section187
import InitE.BackendStages.Section188
import InitE.BackendStages.Section189
import InitE.BackendStages.Section190
import InitE.BackendStages.Section191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk176_191
def sections : LabSem.LabProgHOL 64 := [section176, section177, section178, section179, section180, section181, section182, section183, section184, section185, section186, section187, section188, section189, section190, section191]
theorem compiled_eq : NamedChunk176_191.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named176, StackToLab.progToSectionHOL Named177, StackToLab.progToSectionHOL Named178, StackToLab.progToSectionHOL Named179, StackToLab.progToSectionHOL Named180, StackToLab.progToSectionHOL Named181, StackToLab.progToSectionHOL Named182, StackToLab.progToSectionHOL Named183, StackToLab.progToSectionHOL Named184, StackToLab.progToSectionHOL Named185, StackToLab.progToSectionHOL Named186, StackToLab.progToSectionHOL Named187, StackToLab.progToSectionHOL Named188, StackToLab.progToSectionHOL Named189, StackToLab.progToSectionHOL Named190, StackToLab.progToSectionHOL Named191] = sections
  rw [section176_eq, section177_eq, section178_eq, section179_eq, section180_eq, section181_eq, section182_eq, section183_eq, section184_eq, section185_eq, section186_eq, section187_eq, section188_eq, section189_eq, section190_eq, section191_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk176_191
