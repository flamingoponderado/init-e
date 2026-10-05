import InitE.BackendStages.NamedChunk768_783
import InitE.BackendStages.Section768
import InitE.BackendStages.Section769
import InitE.BackendStages.Section770
import InitE.BackendStages.Section771
import InitE.BackendStages.Section772
import InitE.BackendStages.Section773
import InitE.BackendStages.Section774
import InitE.BackendStages.Section775
import InitE.BackendStages.Section776
import InitE.BackendStages.Section777
import InitE.BackendStages.Section778
import InitE.BackendStages.Section779
import InitE.BackendStages.Section780
import InitE.BackendStages.Section781
import InitE.BackendStages.Section782
import InitE.BackendStages.Section783
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk768_783
def sections : LabSem.LabProgHOL 64 := [section768, section769, section770, section771, section772, section773, section774, section775, section776, section777, section778, section779, section780, section781, section782, section783]
theorem compiled_eq : NamedChunk768_783.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named768, StackToLab.progToSectionHOL Named769, StackToLab.progToSectionHOL Named770, StackToLab.progToSectionHOL Named771, StackToLab.progToSectionHOL Named772, StackToLab.progToSectionHOL Named773, StackToLab.progToSectionHOL Named774, StackToLab.progToSectionHOL Named775, StackToLab.progToSectionHOL Named776, StackToLab.progToSectionHOL Named777, StackToLab.progToSectionHOL Named778, StackToLab.progToSectionHOL Named779, StackToLab.progToSectionHOL Named780, StackToLab.progToSectionHOL Named781, StackToLab.progToSectionHOL Named782, StackToLab.progToSectionHOL Named783] = sections
  rw [section768_eq, section769_eq, section770_eq, section771_eq, section772_eq, section773_eq, section774_eq, section775_eq, section776_eq, section777_eq, section778_eq, section779_eq, section780_eq, section781_eq, section782_eq, section783_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk768_783
