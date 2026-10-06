import InitE.BackendStages.NamedChunk544_559
import InitE.BackendStages.Section544
import InitE.BackendStages.Section545
import InitE.BackendStages.Section546
import InitE.BackendStages.Section547
import InitE.BackendStages.Section548
import InitE.BackendStages.Section549
import InitE.BackendStages.Section550
import InitE.BackendStages.Section551
import InitE.BackendStages.Section552
import InitE.BackendStages.Section553
import InitE.BackendStages.Section554
import InitE.BackendStages.Section555
import InitE.BackendStages.Section556
import InitE.BackendStages.Section557
import InitE.BackendStages.Section558
import InitE.BackendStages.Section559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk544_559
def sections : LabSem.LabProgHOL 64 := [section544, section545, section546, section547, section548, section549, section550, section551, section552, section553, section554, section555, section556, section557, section558, section559]
theorem compiled_eq : NamedChunk544_559.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named544, StackToLab.progToSectionHOL Named545, StackToLab.progToSectionHOL Named546, StackToLab.progToSectionHOL Named547, StackToLab.progToSectionHOL Named548, StackToLab.progToSectionHOL Named549, StackToLab.progToSectionHOL Named550, StackToLab.progToSectionHOL Named551, StackToLab.progToSectionHOL Named552, StackToLab.progToSectionHOL Named553, StackToLab.progToSectionHOL Named554, StackToLab.progToSectionHOL Named555, StackToLab.progToSectionHOL Named556, StackToLab.progToSectionHOL Named557, StackToLab.progToSectionHOL Named558, StackToLab.progToSectionHOL Named559] = sections
  rw [section544_eq, section545_eq, section546_eq, section547_eq, section548_eq, section549_eq, section550_eq, section551_eq, section552_eq, section553_eq, section554_eq, section555_eq, section556_eq, section557_eq, section558_eq, section559_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk544_559
