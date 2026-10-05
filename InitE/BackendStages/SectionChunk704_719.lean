import InitE.BackendStages.NamedChunk704_719
import InitE.BackendStages.Section704
import InitE.BackendStages.Section705
import InitE.BackendStages.Section706
import InitE.BackendStages.Section707
import InitE.BackendStages.Section708
import InitE.BackendStages.Section709
import InitE.BackendStages.Section710
import InitE.BackendStages.Section711
import InitE.BackendStages.Section712
import InitE.BackendStages.Section713
import InitE.BackendStages.Section714
import InitE.BackendStages.Section715
import InitE.BackendStages.Section716
import InitE.BackendStages.Section717
import InitE.BackendStages.Section718
import InitE.BackendStages.Section719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk704_719
def sections : LabSem.LabProgHOL 64 := [section704, section705, section706, section707, section708, section709, section710, section711, section712, section713, section714, section715, section716, section717, section718, section719]
theorem compiled_eq : NamedChunk704_719.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named704, StackToLab.progToSectionHOL Named705, StackToLab.progToSectionHOL Named706, StackToLab.progToSectionHOL Named707, StackToLab.progToSectionHOL Named708, StackToLab.progToSectionHOL Named709, StackToLab.progToSectionHOL Named710, StackToLab.progToSectionHOL Named711, StackToLab.progToSectionHOL Named712, StackToLab.progToSectionHOL Named713, StackToLab.progToSectionHOL Named714, StackToLab.progToSectionHOL Named715, StackToLab.progToSectionHOL Named716, StackToLab.progToSectionHOL Named717, StackToLab.progToSectionHOL Named718, StackToLab.progToSectionHOL Named719] = sections
  rw [section704_eq, section705_eq, section706_eq, section707_eq, section708_eq, section709_eq, section710_eq, section711_eq, section712_eq, section713_eq, section714_eq, section715_eq, section716_eq, section717_eq, section718_eq, section719_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk704_719
