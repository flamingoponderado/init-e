import InitE.BackendStages.SectionChunk592_607
import InitE.BackendStages.Filtered592
import InitE.BackendStages.Filtered593
import InitE.BackendStages.Filtered594
import InitE.BackendStages.Filtered595
import InitE.BackendStages.Filtered596
import InitE.BackendStages.Filtered597
import InitE.BackendStages.Filtered598
import InitE.BackendStages.Filtered599
import InitE.BackendStages.Filtered600
import InitE.BackendStages.Filtered601
import InitE.BackendStages.Filtered602
import InitE.BackendStages.Filtered603
import InitE.BackendStages.Filtered604
import InitE.BackendStages.Filtered605
import InitE.BackendStages.Filtered606
import InitE.BackendStages.Filtered607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk592_607
def sections : LabSem.LabProgHOL 64 := [Filtered592, Filtered593, Filtered594, Filtered595, Filtered596, Filtered597, Filtered598, Filtered599, Filtered600, Filtered601, Filtered602, Filtered603, Filtered604, Filtered605, Filtered606, Filtered607]
theorem compiled_eq : SectionChunk592_607.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section592 with lines := section592.lines.filter LabFilter.notSkip }, { section593 with lines := section593.lines.filter LabFilter.notSkip }, { section594 with lines := section594.lines.filter LabFilter.notSkip }, { section595 with lines := section595.lines.filter LabFilter.notSkip }, { section596 with lines := section596.lines.filter LabFilter.notSkip }, { section597 with lines := section597.lines.filter LabFilter.notSkip }, { section598 with lines := section598.lines.filter LabFilter.notSkip }, { section599 with lines := section599.lines.filter LabFilter.notSkip }, { section600 with lines := section600.lines.filter LabFilter.notSkip }, { section601 with lines := section601.lines.filter LabFilter.notSkip }, { section602 with lines := section602.lines.filter LabFilter.notSkip }, { section603 with lines := section603.lines.filter LabFilter.notSkip }, { section604 with lines := section604.lines.filter LabFilter.notSkip }, { section605 with lines := section605.lines.filter LabFilter.notSkip }, { section606 with lines := section606.lines.filter LabFilter.notSkip }, { section607 with lines := section607.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered592_eq, Filtered593_eq, Filtered594_eq, Filtered595_eq, Filtered596_eq, Filtered597_eq, Filtered598_eq, Filtered599_eq, Filtered600_eq, Filtered601_eq, Filtered602_eq, Filtered603_eq, Filtered604_eq, Filtered605_eq, Filtered606_eq, Filtered607_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk592_607
