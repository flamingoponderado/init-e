import InitE.BackendStages.NamedChunk576_591
import InitE.BackendStages.Section576
import InitE.BackendStages.Section577
import InitE.BackendStages.Section578
import InitE.BackendStages.Section579
import InitE.BackendStages.Section580
import InitE.BackendStages.Section581
import InitE.BackendStages.Section582
import InitE.BackendStages.Section583
import InitE.BackendStages.Section584
import InitE.BackendStages.Section585
import InitE.BackendStages.Section586
import InitE.BackendStages.Section587
import InitE.BackendStages.Section588
import InitE.BackendStages.Section589
import InitE.BackendStages.Section590
import InitE.BackendStages.Section591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk576_591
def sections : LabSem.LabProgHOL 64 := [section576, section577, section578, section579, section580, section581, section582, section583, section584, section585, section586, section587, section588, section589, section590, section591]
theorem compiled_eq : NamedChunk576_591.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named576, StackToLab.progToSectionHOL Named577, StackToLab.progToSectionHOL Named578, StackToLab.progToSectionHOL Named579, StackToLab.progToSectionHOL Named580, StackToLab.progToSectionHOL Named581, StackToLab.progToSectionHOL Named582, StackToLab.progToSectionHOL Named583, StackToLab.progToSectionHOL Named584, StackToLab.progToSectionHOL Named585, StackToLab.progToSectionHOL Named586, StackToLab.progToSectionHOL Named587, StackToLab.progToSectionHOL Named588, StackToLab.progToSectionHOL Named589, StackToLab.progToSectionHOL Named590, StackToLab.progToSectionHOL Named591] = sections
  rw [section576_eq, section577_eq, section578_eq, section579_eq, section580_eq, section581_eq, section582_eq, section583_eq, section584_eq, section585_eq, section586_eq, section587_eq, section588_eq, section589_eq, section590_eq, section591_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk576_591
