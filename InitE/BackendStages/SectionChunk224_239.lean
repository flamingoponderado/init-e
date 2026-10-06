import InitE.BackendStages.NamedChunk224_239
import InitE.BackendStages.Section224
import InitE.BackendStages.Section225
import InitE.BackendStages.Section226
import InitE.BackendStages.Section227
import InitE.BackendStages.Section228
import InitE.BackendStages.Section229
import InitE.BackendStages.Section230
import InitE.BackendStages.Section231
import InitE.BackendStages.Section232
import InitE.BackendStages.Section233
import InitE.BackendStages.Section234
import InitE.BackendStages.Section235
import InitE.BackendStages.Section236
import InitE.BackendStages.Section237
import InitE.BackendStages.Section238
import InitE.BackendStages.Section239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk224_239
def sections : LabSem.LabProgHOL 64 := [section224, section225, section226, section227, section228, section229, section230, section231, section232, section233, section234, section235, section236, section237, section238, section239]
theorem compiled_eq : NamedChunk224_239.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named224, StackToLab.progToSectionHOL Named225, StackToLab.progToSectionHOL Named226, StackToLab.progToSectionHOL Named227, StackToLab.progToSectionHOL Named228, StackToLab.progToSectionHOL Named229, StackToLab.progToSectionHOL Named230, StackToLab.progToSectionHOL Named231, StackToLab.progToSectionHOL Named232, StackToLab.progToSectionHOL Named233, StackToLab.progToSectionHOL Named234, StackToLab.progToSectionHOL Named235, StackToLab.progToSectionHOL Named236, StackToLab.progToSectionHOL Named237, StackToLab.progToSectionHOL Named238, StackToLab.progToSectionHOL Named239] = sections
  rw [section224_eq, section225_eq, section226_eq, section227_eq, section228_eq, section229_eq, section230_eq, section231_eq, section232_eq, section233_eq, section234_eq, section235_eq, section236_eq, section237_eq, section238_eq, section239_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk224_239
