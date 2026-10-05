import InitE.BackendStages.NamedChunk656_671
import InitE.BackendStages.Section656
import InitE.BackendStages.Section657
import InitE.BackendStages.Section658
import InitE.BackendStages.Section659
import InitE.BackendStages.Section660
import InitE.BackendStages.Section661
import InitE.BackendStages.Section662
import InitE.BackendStages.Section663
import InitE.BackendStages.Section664
import InitE.BackendStages.Section665
import InitE.BackendStages.Section666
import InitE.BackendStages.Section667
import InitE.BackendStages.Section668
import InitE.BackendStages.Section669
import InitE.BackendStages.Section670
import InitE.BackendStages.Section671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk656_671
def sections : LabSem.LabProgHOL 64 := [section656, section657, section658, section659, section660, section661, section662, section663, section664, section665, section666, section667, section668, section669, section670, section671]
theorem compiled_eq : NamedChunk656_671.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named656, StackToLab.progToSectionHOL Named657, StackToLab.progToSectionHOL Named658, StackToLab.progToSectionHOL Named659, StackToLab.progToSectionHOL Named660, StackToLab.progToSectionHOL Named661, StackToLab.progToSectionHOL Named662, StackToLab.progToSectionHOL Named663, StackToLab.progToSectionHOL Named664, StackToLab.progToSectionHOL Named665, StackToLab.progToSectionHOL Named666, StackToLab.progToSectionHOL Named667, StackToLab.progToSectionHOL Named668, StackToLab.progToSectionHOL Named669, StackToLab.progToSectionHOL Named670, StackToLab.progToSectionHOL Named671] = sections
  rw [section656_eq, section657_eq, section658_eq, section659_eq, section660_eq, section661_eq, section662_eq, section663_eq, section664_eq, section665_eq, section666_eq, section667_eq, section668_eq, section669_eq, section670_eq, section671_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk656_671
