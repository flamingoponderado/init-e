import InitE.BackendStages.NamedChunk64_79
import InitE.BackendStages.Section64
import InitE.BackendStages.Section65
import InitE.BackendStages.Section66
import InitE.BackendStages.Section67
import InitE.BackendStages.Section68
import InitE.BackendStages.Section69
import InitE.BackendStages.Section70
import InitE.BackendStages.Section71
import InitE.BackendStages.Section72
import InitE.BackendStages.Section73
import InitE.BackendStages.Section74
import InitE.BackendStages.Section75
import InitE.BackendStages.Section76
import InitE.BackendStages.Section77
import InitE.BackendStages.Section78
import InitE.BackendStages.Section79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk64_79
def sections : LabSem.LabProgHOL 64 := [section64, section65, section66, section67, section68, section69, section70, section71, section72, section73, section74, section75, section76, section77, section78, section79]
theorem compiled_eq : NamedChunk64_79.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named64, StackToLab.progToSectionHOL Named65, StackToLab.progToSectionHOL Named66, StackToLab.progToSectionHOL Named67, StackToLab.progToSectionHOL Named68, StackToLab.progToSectionHOL Named69, StackToLab.progToSectionHOL Named70, StackToLab.progToSectionHOL Named71, StackToLab.progToSectionHOL Named72, StackToLab.progToSectionHOL Named73, StackToLab.progToSectionHOL Named74, StackToLab.progToSectionHOL Named75, StackToLab.progToSectionHOL Named76, StackToLab.progToSectionHOL Named77, StackToLab.progToSectionHOL Named78, StackToLab.progToSectionHOL Named79] = sections
  rw [section64_eq, section65_eq, section66_eq, section67_eq, section68_eq, section69_eq, section70_eq, section71_eq, section72_eq, section73_eq, section74_eq, section75_eq, section76_eq, section77_eq, section78_eq, section79_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk64_79
