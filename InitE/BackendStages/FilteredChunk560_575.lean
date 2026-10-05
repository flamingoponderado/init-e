import InitE.BackendStages.SectionChunk560_575
import InitE.BackendStages.Filtered560
import InitE.BackendStages.Filtered561
import InitE.BackendStages.Filtered562
import InitE.BackendStages.Filtered563
import InitE.BackendStages.Filtered564
import InitE.BackendStages.Filtered565
import InitE.BackendStages.Filtered566
import InitE.BackendStages.Filtered567
import InitE.BackendStages.Filtered568
import InitE.BackendStages.Filtered569
import InitE.BackendStages.Filtered570
import InitE.BackendStages.Filtered571
import InitE.BackendStages.Filtered572
import InitE.BackendStages.Filtered573
import InitE.BackendStages.Filtered574
import InitE.BackendStages.Filtered575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk560_575
def sections : LabSem.LabProgHOL 64 := [Filtered560, Filtered561, Filtered562, Filtered563, Filtered564, Filtered565, Filtered566, Filtered567, Filtered568, Filtered569, Filtered570, Filtered571, Filtered572, Filtered573, Filtered574, Filtered575]
theorem compiled_eq : SectionChunk560_575.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section560 with lines := section560.lines.filter LabFilter.notSkip }, { section561 with lines := section561.lines.filter LabFilter.notSkip }, { section562 with lines := section562.lines.filter LabFilter.notSkip }, { section563 with lines := section563.lines.filter LabFilter.notSkip }, { section564 with lines := section564.lines.filter LabFilter.notSkip }, { section565 with lines := section565.lines.filter LabFilter.notSkip }, { section566 with lines := section566.lines.filter LabFilter.notSkip }, { section567 with lines := section567.lines.filter LabFilter.notSkip }, { section568 with lines := section568.lines.filter LabFilter.notSkip }, { section569 with lines := section569.lines.filter LabFilter.notSkip }, { section570 with lines := section570.lines.filter LabFilter.notSkip }, { section571 with lines := section571.lines.filter LabFilter.notSkip }, { section572 with lines := section572.lines.filter LabFilter.notSkip }, { section573 with lines := section573.lines.filter LabFilter.notSkip }, { section574 with lines := section574.lines.filter LabFilter.notSkip }, { section575 with lines := section575.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered560_eq, Filtered561_eq, Filtered562_eq, Filtered563_eq, Filtered564_eq, Filtered565_eq, Filtered566_eq, Filtered567_eq, Filtered568_eq, Filtered569_eq, Filtered570_eq, Filtered571_eq, Filtered572_eq, Filtered573_eq, Filtered574_eq, Filtered575_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk560_575
