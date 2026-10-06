import InitE.BackendStages.NamedChunk800_815
import InitE.BackendStages.Section800
import InitE.BackendStages.Section801
import InitE.BackendStages.Section802
import InitE.BackendStages.Section803
import InitE.BackendStages.Section804
import InitE.BackendStages.Section805
import InitE.BackendStages.Section806
import InitE.BackendStages.Section807
import InitE.BackendStages.Section808
import InitE.BackendStages.Section809
import InitE.BackendStages.Section810
import InitE.BackendStages.Section811
import InitE.BackendStages.Section812
import InitE.BackendStages.Section813
import InitE.BackendStages.Section814
import InitE.BackendStages.Section815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk800_815
def sections : LabSem.LabProgHOL 64 := [section800, section801, section802, section803, section804, section805, section806, section807, section808, section809, section810, section811, section812, section813, section814, section815]
theorem compiled_eq : NamedChunk800_815.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named800, StackToLab.progToSectionHOL Named801, StackToLab.progToSectionHOL Named802, StackToLab.progToSectionHOL Named803, StackToLab.progToSectionHOL Named804, StackToLab.progToSectionHOL Named805, StackToLab.progToSectionHOL Named806, StackToLab.progToSectionHOL Named807, StackToLab.progToSectionHOL Named808, StackToLab.progToSectionHOL Named809, StackToLab.progToSectionHOL Named810, StackToLab.progToSectionHOL Named811, StackToLab.progToSectionHOL Named812, StackToLab.progToSectionHOL Named813, StackToLab.progToSectionHOL Named814, StackToLab.progToSectionHOL Named815] = sections
  rw [section800_eq, section801_eq, section802_eq, section803_eq, section804_eq, section805_eq, section806_eq, section807_eq, section808_eq, section809_eq, section810_eq, section811_eq, section812_eq, section813_eq, section814_eq, section815_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk800_815
