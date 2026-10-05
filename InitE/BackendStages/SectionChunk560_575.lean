import InitE.BackendStages.NamedChunk560_575
import InitE.BackendStages.Section560
import InitE.BackendStages.Section561
import InitE.BackendStages.Section562
import InitE.BackendStages.Section563
import InitE.BackendStages.Section564
import InitE.BackendStages.Section565
import InitE.BackendStages.Section566
import InitE.BackendStages.Section567
import InitE.BackendStages.Section568
import InitE.BackendStages.Section569
import InitE.BackendStages.Section570
import InitE.BackendStages.Section571
import InitE.BackendStages.Section572
import InitE.BackendStages.Section573
import InitE.BackendStages.Section574
import InitE.BackendStages.Section575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk560_575
def sections : LabSem.LabProgHOL 64 := [section560, section561, section562, section563, section564, section565, section566, section567, section568, section569, section570, section571, section572, section573, section574, section575]
theorem compiled_eq : NamedChunk560_575.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named560, StackToLab.progToSectionHOL Named561, StackToLab.progToSectionHOL Named562, StackToLab.progToSectionHOL Named563, StackToLab.progToSectionHOL Named564, StackToLab.progToSectionHOL Named565, StackToLab.progToSectionHOL Named566, StackToLab.progToSectionHOL Named567, StackToLab.progToSectionHOL Named568, StackToLab.progToSectionHOL Named569, StackToLab.progToSectionHOL Named570, StackToLab.progToSectionHOL Named571, StackToLab.progToSectionHOL Named572, StackToLab.progToSectionHOL Named573, StackToLab.progToSectionHOL Named574, StackToLab.progToSectionHOL Named575] = sections
  rw [section560_eq, section561_eq, section562_eq, section563_eq, section564_eq, section565_eq, section566_eq, section567_eq, section568_eq, section569_eq, section570_eq, section571_eq, section572_eq, section573_eq, section574_eq, section575_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk560_575
