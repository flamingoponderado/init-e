import InitE.BackendStages.NamedChunk80_95
import InitE.BackendStages.Section80
import InitE.BackendStages.Section81
import InitE.BackendStages.Section82
import InitE.BackendStages.Section83
import InitE.BackendStages.Section84
import InitE.BackendStages.Section85
import InitE.BackendStages.Section86
import InitE.BackendStages.Section87
import InitE.BackendStages.Section88
import InitE.BackendStages.Section89
import InitE.BackendStages.Section90
import InitE.BackendStages.Section91
import InitE.BackendStages.Section92
import InitE.BackendStages.Section93
import InitE.BackendStages.Section94
import InitE.BackendStages.Section95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk80_95
def sections : LabSem.LabProgHOL 64 := [section80, section81, section82, section83, section84, section85, section86, section87, section88, section89, section90, section91, section92, section93, section94, section95]
theorem compiled_eq : NamedChunk80_95.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named80, StackToLab.progToSectionHOL Named81, StackToLab.progToSectionHOL Named82, StackToLab.progToSectionHOL Named83, StackToLab.progToSectionHOL Named84, StackToLab.progToSectionHOL Named85, StackToLab.progToSectionHOL Named86, StackToLab.progToSectionHOL Named87, StackToLab.progToSectionHOL Named88, StackToLab.progToSectionHOL Named89, StackToLab.progToSectionHOL Named90, StackToLab.progToSectionHOL Named91, StackToLab.progToSectionHOL Named92, StackToLab.progToSectionHOL Named93, StackToLab.progToSectionHOL Named94, StackToLab.progToSectionHOL Named95] = sections
  rw [section80_eq, section81_eq, section82_eq, section83_eq, section84_eq, section85_eq, section86_eq, section87_eq, section88_eq, section89_eq, section90_eq, section91_eq, section92_eq, section93_eq, section94_eq, section95_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk80_95
