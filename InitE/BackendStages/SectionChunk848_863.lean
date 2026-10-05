import InitE.BackendStages.NamedChunk848_863
import InitE.BackendStages.Section848
import InitE.BackendStages.Section849
import InitE.BackendStages.Section850
import InitE.BackendStages.Section851
import InitE.BackendStages.Section852
import InitE.BackendStages.Section853
import InitE.BackendStages.Section854
import InitE.BackendStages.Section855
import InitE.BackendStages.Section856
import InitE.BackendStages.Section857
import InitE.BackendStages.Section858
import InitE.BackendStages.Section859
import InitE.BackendStages.Section860
import InitE.BackendStages.Section861
import InitE.BackendStages.Section862
import InitE.BackendStages.Section863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk848_863
def sections : LabSem.LabProgHOL 64 := [section848, section849, section850, section851, section852, section853, section854, section855, section856, section857, section858, section859, section860, section861, section862, section863]
theorem compiled_eq : NamedChunk848_863.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named848, StackToLab.progToSectionHOL Named849, StackToLab.progToSectionHOL Named850, StackToLab.progToSectionHOL Named851, StackToLab.progToSectionHOL Named852, StackToLab.progToSectionHOL Named853, StackToLab.progToSectionHOL Named854, StackToLab.progToSectionHOL Named855, StackToLab.progToSectionHOL Named856, StackToLab.progToSectionHOL Named857, StackToLab.progToSectionHOL Named858, StackToLab.progToSectionHOL Named859, StackToLab.progToSectionHOL Named860, StackToLab.progToSectionHOL Named861, StackToLab.progToSectionHOL Named862, StackToLab.progToSectionHOL Named863] = sections
  rw [section848_eq, section849_eq, section850_eq, section851_eq, section852_eq, section853_eq, section854_eq, section855_eq, section856_eq, section857_eq, section858_eq, section859_eq, section860_eq, section861_eq, section862_eq, section863_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk848_863
