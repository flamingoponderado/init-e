import InitE.BackendStages.NamedChunk240_255
import InitE.BackendStages.Section240
import InitE.BackendStages.Section241
import InitE.BackendStages.Section242
import InitE.BackendStages.Section243
import InitE.BackendStages.Section244
import InitE.BackendStages.Section245
import InitE.BackendStages.Section246
import InitE.BackendStages.Section247
import InitE.BackendStages.Section248
import InitE.BackendStages.Section249
import InitE.BackendStages.Section250
import InitE.BackendStages.Section251
import InitE.BackendStages.Section252
import InitE.BackendStages.Section253
import InitE.BackendStages.Section254
import InitE.BackendStages.Section255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk240_255
def sections : LabSem.LabProgHOL 64 := [section240, section241, section242, section243, section244, section245, section246, section247, section248, section249, section250, section251, section252, section253, section254, section255]
theorem compiled_eq : NamedChunk240_255.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named240, StackToLab.progToSectionHOL Named241, StackToLab.progToSectionHOL Named242, StackToLab.progToSectionHOL Named243, StackToLab.progToSectionHOL Named244, StackToLab.progToSectionHOL Named245, StackToLab.progToSectionHOL Named246, StackToLab.progToSectionHOL Named247, StackToLab.progToSectionHOL Named248, StackToLab.progToSectionHOL Named249, StackToLab.progToSectionHOL Named250, StackToLab.progToSectionHOL Named251, StackToLab.progToSectionHOL Named252, StackToLab.progToSectionHOL Named253, StackToLab.progToSectionHOL Named254, StackToLab.progToSectionHOL Named255] = sections
  rw [section240_eq, section241_eq, section242_eq, section243_eq, section244_eq, section245_eq, section246_eq, section247_eq, section248_eq, section249_eq, section250_eq, section251_eq, section252_eq, section253_eq, section254_eq, section255_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk240_255
