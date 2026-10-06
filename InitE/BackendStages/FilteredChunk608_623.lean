import InitE.BackendStages.SectionChunk608_623
import InitE.BackendStages.Filtered608
import InitE.BackendStages.Filtered609
import InitE.BackendStages.Filtered610
import InitE.BackendStages.Filtered611
import InitE.BackendStages.Filtered612
import InitE.BackendStages.Filtered613
import InitE.BackendStages.Filtered614
import InitE.BackendStages.Filtered615
import InitE.BackendStages.Filtered616
import InitE.BackendStages.Filtered617
import InitE.BackendStages.Filtered618
import InitE.BackendStages.Filtered619
import InitE.BackendStages.Filtered620
import InitE.BackendStages.Filtered621
import InitE.BackendStages.Filtered622
import InitE.BackendStages.Filtered623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk608_623
def sections : LabSem.LabProgHOL 64 := [Filtered608, Filtered609, Filtered610, Filtered611, Filtered612, Filtered613, Filtered614, Filtered615, Filtered616, Filtered617, Filtered618, Filtered619, Filtered620, Filtered621, Filtered622, Filtered623]
theorem compiled_eq : SectionChunk608_623.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section608 with lines := section608.lines.filter LabFilter.notSkip }, { section609 with lines := section609.lines.filter LabFilter.notSkip }, { section610 with lines := section610.lines.filter LabFilter.notSkip }, { section611 with lines := section611.lines.filter LabFilter.notSkip }, { section612 with lines := section612.lines.filter LabFilter.notSkip }, { section613 with lines := section613.lines.filter LabFilter.notSkip }, { section614 with lines := section614.lines.filter LabFilter.notSkip }, { section615 with lines := section615.lines.filter LabFilter.notSkip }, { section616 with lines := section616.lines.filter LabFilter.notSkip }, { section617 with lines := section617.lines.filter LabFilter.notSkip }, { section618 with lines := section618.lines.filter LabFilter.notSkip }, { section619 with lines := section619.lines.filter LabFilter.notSkip }, { section620 with lines := section620.lines.filter LabFilter.notSkip }, { section621 with lines := section621.lines.filter LabFilter.notSkip }, { section622 with lines := section622.lines.filter LabFilter.notSkip }, { section623 with lines := section623.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered608_eq, Filtered609_eq, Filtered610_eq, Filtered611_eq, Filtered612_eq, Filtered613_eq, Filtered614_eq, Filtered615_eq, Filtered616_eq, Filtered617_eq, Filtered618_eq, Filtered619_eq, Filtered620_eq, Filtered621_eq, Filtered622_eq, Filtered623_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk608_623
