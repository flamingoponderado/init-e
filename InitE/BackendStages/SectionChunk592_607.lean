import InitE.BackendStages.NamedChunk592_607
import InitE.BackendStages.Section592
import InitE.BackendStages.Section593
import InitE.BackendStages.Section594
import InitE.BackendStages.Section595
import InitE.BackendStages.Section596
import InitE.BackendStages.Section597
import InitE.BackendStages.Section598
import InitE.BackendStages.Section599
import InitE.BackendStages.Section600
import InitE.BackendStages.Section601
import InitE.BackendStages.Section602
import InitE.BackendStages.Section603
import InitE.BackendStages.Section604
import InitE.BackendStages.Section605
import InitE.BackendStages.Section606
import InitE.BackendStages.Section607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk592_607
def sections : LabSem.LabProgHOL 64 := [section592, section593, section594, section595, section596, section597, section598, section599, section600, section601, section602, section603, section604, section605, section606, section607]
theorem compiled_eq : NamedChunk592_607.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named592, StackToLab.progToSectionHOL Named593, StackToLab.progToSectionHOL Named594, StackToLab.progToSectionHOL Named595, StackToLab.progToSectionHOL Named596, StackToLab.progToSectionHOL Named597, StackToLab.progToSectionHOL Named598, StackToLab.progToSectionHOL Named599, StackToLab.progToSectionHOL Named600, StackToLab.progToSectionHOL Named601, StackToLab.progToSectionHOL Named602, StackToLab.progToSectionHOL Named603, StackToLab.progToSectionHOL Named604, StackToLab.progToSectionHOL Named605, StackToLab.progToSectionHOL Named606, StackToLab.progToSectionHOL Named607] = sections
  rw [section592_eq, section593_eq, section594_eq, section595_eq, section596_eq, section597_eq, section598_eq, section599_eq, section600_eq, section601_eq, section602_eq, section603_eq, section604_eq, section605_eq, section606_eq, section607_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk592_607
