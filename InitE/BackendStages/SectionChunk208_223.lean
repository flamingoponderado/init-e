import InitE.BackendStages.NamedChunk208_223
import InitE.BackendStages.Section208
import InitE.BackendStages.Section209
import InitE.BackendStages.Section210
import InitE.BackendStages.Section211
import InitE.BackendStages.Section212
import InitE.BackendStages.Section213
import InitE.BackendStages.Section214
import InitE.BackendStages.Section215
import InitE.BackendStages.Section216
import InitE.BackendStages.Section217
import InitE.BackendStages.Section218
import InitE.BackendStages.Section219
import InitE.BackendStages.Section220
import InitE.BackendStages.Section221
import InitE.BackendStages.Section222
import InitE.BackendStages.Section223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk208_223
def sections : LabSem.LabProgHOL 64 := [section208, section209, section210, section211, section212, section213, section214, section215, section216, section217, section218, section219, section220, section221, section222, section223]
theorem compiled_eq : NamedChunk208_223.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named208, StackToLab.progToSectionHOL Named209, StackToLab.progToSectionHOL Named210, StackToLab.progToSectionHOL Named211, StackToLab.progToSectionHOL Named212, StackToLab.progToSectionHOL Named213, StackToLab.progToSectionHOL Named214, StackToLab.progToSectionHOL Named215, StackToLab.progToSectionHOL Named216, StackToLab.progToSectionHOL Named217, StackToLab.progToSectionHOL Named218, StackToLab.progToSectionHOL Named219, StackToLab.progToSectionHOL Named220, StackToLab.progToSectionHOL Named221, StackToLab.progToSectionHOL Named222, StackToLab.progToSectionHOL Named223] = sections
  rw [section208_eq, section209_eq, section210_eq, section211_eq, section212_eq, section213_eq, section214_eq, section215_eq, section216_eq, section217_eq, section218_eq, section219_eq, section220_eq, section221_eq, section222_eq, section223_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk208_223
