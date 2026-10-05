import InitE.BackendStages.SectionChunk544_559
import InitE.BackendStages.Filtered544
import InitE.BackendStages.Filtered545
import InitE.BackendStages.Filtered546
import InitE.BackendStages.Filtered547
import InitE.BackendStages.Filtered548
import InitE.BackendStages.Filtered549
import InitE.BackendStages.Filtered550
import InitE.BackendStages.Filtered551
import InitE.BackendStages.Filtered552
import InitE.BackendStages.Filtered553
import InitE.BackendStages.Filtered554
import InitE.BackendStages.Filtered555
import InitE.BackendStages.Filtered556
import InitE.BackendStages.Filtered557
import InitE.BackendStages.Filtered558
import InitE.BackendStages.Filtered559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk544_559
def sections : LabSem.LabProgHOL 64 := [Filtered544, Filtered545, Filtered546, Filtered547, Filtered548, Filtered549, Filtered550, Filtered551, Filtered552, Filtered553, Filtered554, Filtered555, Filtered556, Filtered557, Filtered558, Filtered559]
theorem compiled_eq : SectionChunk544_559.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section544 with lines := section544.lines.filter LabFilter.notSkip }, { section545 with lines := section545.lines.filter LabFilter.notSkip }, { section546 with lines := section546.lines.filter LabFilter.notSkip }, { section547 with lines := section547.lines.filter LabFilter.notSkip }, { section548 with lines := section548.lines.filter LabFilter.notSkip }, { section549 with lines := section549.lines.filter LabFilter.notSkip }, { section550 with lines := section550.lines.filter LabFilter.notSkip }, { section551 with lines := section551.lines.filter LabFilter.notSkip }, { section552 with lines := section552.lines.filter LabFilter.notSkip }, { section553 with lines := section553.lines.filter LabFilter.notSkip }, { section554 with lines := section554.lines.filter LabFilter.notSkip }, { section555 with lines := section555.lines.filter LabFilter.notSkip }, { section556 with lines := section556.lines.filter LabFilter.notSkip }, { section557 with lines := section557.lines.filter LabFilter.notSkip }, { section558 with lines := section558.lines.filter LabFilter.notSkip }, { section559 with lines := section559.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered544_eq, Filtered545_eq, Filtered546_eq, Filtered547_eq, Filtered548_eq, Filtered549_eq, Filtered550_eq, Filtered551_eq, Filtered552_eq, Filtered553_eq, Filtered554_eq, Filtered555_eq, Filtered556_eq, Filtered557_eq, Filtered558_eq, Filtered559_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk544_559
