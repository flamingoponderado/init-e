import InitE.BackendStages.NamedChunk784_799
import InitE.BackendStages.Section784
import InitE.BackendStages.Section785
import InitE.BackendStages.Section786
import InitE.BackendStages.Section787
import InitE.BackendStages.Section788
import InitE.BackendStages.Section789
import InitE.BackendStages.Section790
import InitE.BackendStages.Section791
import InitE.BackendStages.Section792
import InitE.BackendStages.Section793
import InitE.BackendStages.Section794
import InitE.BackendStages.Section795
import InitE.BackendStages.Section796
import InitE.BackendStages.Section797
import InitE.BackendStages.Section798
import InitE.BackendStages.Section799
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk784_799
def sections : LabSem.LabProgHOL 64 := [section784, section785, section786, section787, section788, section789, section790, section791, section792, section793, section794, section795, section796, section797, section798, section799]
theorem compiled_eq : NamedChunk784_799.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named784, StackToLab.progToSectionHOL Named785, StackToLab.progToSectionHOL Named786, StackToLab.progToSectionHOL Named787, StackToLab.progToSectionHOL Named788, StackToLab.progToSectionHOL Named789, StackToLab.progToSectionHOL Named790, StackToLab.progToSectionHOL Named791, StackToLab.progToSectionHOL Named792, StackToLab.progToSectionHOL Named793, StackToLab.progToSectionHOL Named794, StackToLab.progToSectionHOL Named795, StackToLab.progToSectionHOL Named796, StackToLab.progToSectionHOL Named797, StackToLab.progToSectionHOL Named798, StackToLab.progToSectionHOL Named799] = sections
  rw [section784_eq, section785_eq, section786_eq, section787_eq, section788_eq, section789_eq, section790_eq, section791_eq, section792_eq, section793_eq, section794_eq, section795_eq, section796_eq, section797_eq, section798_eq, section799_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk784_799
