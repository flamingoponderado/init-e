import InitE.BackendStages.SectionChunk672_687
import InitE.BackendStages.Filtered672
import InitE.BackendStages.Filtered673
import InitE.BackendStages.Filtered674
import InitE.BackendStages.Filtered675
import InitE.BackendStages.Filtered676
import InitE.BackendStages.Filtered677
import InitE.BackendStages.Filtered678
import InitE.BackendStages.Filtered679
import InitE.BackendStages.Filtered680
import InitE.BackendStages.Filtered681
import InitE.BackendStages.Filtered682
import InitE.BackendStages.Filtered683
import InitE.BackendStages.Filtered684
import InitE.BackendStages.Filtered685
import InitE.BackendStages.Filtered686
import InitE.BackendStages.Filtered687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk672_687
def sections : LabSem.LabProgHOL 64 := [Filtered672, Filtered673, Filtered674, Filtered675, Filtered676, Filtered677, Filtered678, Filtered679, Filtered680, Filtered681, Filtered682, Filtered683, Filtered684, Filtered685, Filtered686, Filtered687]
theorem compiled_eq : SectionChunk672_687.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section672 with lines := section672.lines.filter LabFilter.notSkip }, { section673 with lines := section673.lines.filter LabFilter.notSkip }, { section674 with lines := section674.lines.filter LabFilter.notSkip }, { section675 with lines := section675.lines.filter LabFilter.notSkip }, { section676 with lines := section676.lines.filter LabFilter.notSkip }, { section677 with lines := section677.lines.filter LabFilter.notSkip }, { section678 with lines := section678.lines.filter LabFilter.notSkip }, { section679 with lines := section679.lines.filter LabFilter.notSkip }, { section680 with lines := section680.lines.filter LabFilter.notSkip }, { section681 with lines := section681.lines.filter LabFilter.notSkip }, { section682 with lines := section682.lines.filter LabFilter.notSkip }, { section683 with lines := section683.lines.filter LabFilter.notSkip }, { section684 with lines := section684.lines.filter LabFilter.notSkip }, { section685 with lines := section685.lines.filter LabFilter.notSkip }, { section686 with lines := section686.lines.filter LabFilter.notSkip }, { section687 with lines := section687.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered672_eq, Filtered673_eq, Filtered674_eq, Filtered675_eq, Filtered676_eq, Filtered677_eq, Filtered678_eq, Filtered679_eq, Filtered680_eq, Filtered681_eq, Filtered682_eq, Filtered683_eq, Filtered684_eq, Filtered685_eq, Filtered686_eq, Filtered687_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk672_687
