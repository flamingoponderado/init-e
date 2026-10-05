import InitE.BackendStages.SectionChunk736_751
import InitE.BackendStages.Filtered736
import InitE.BackendStages.Filtered737
import InitE.BackendStages.Filtered738
import InitE.BackendStages.Filtered739
import InitE.BackendStages.Filtered740
import InitE.BackendStages.Filtered741
import InitE.BackendStages.Filtered742
import InitE.BackendStages.Filtered743
import InitE.BackendStages.Filtered744
import InitE.BackendStages.Filtered745
import InitE.BackendStages.Filtered746
import InitE.BackendStages.Filtered747
import InitE.BackendStages.Filtered748
import InitE.BackendStages.Filtered749
import InitE.BackendStages.Filtered750
import InitE.BackendStages.Filtered751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk736_751
def sections : LabSem.LabProgHOL 64 := [Filtered736, Filtered737, Filtered738, Filtered739, Filtered740, Filtered741, Filtered742, Filtered743, Filtered744, Filtered745, Filtered746, Filtered747, Filtered748, Filtered749, Filtered750, Filtered751]
theorem compiled_eq : SectionChunk736_751.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section736 with lines := section736.lines.filter LabFilter.notSkip }, { section737 with lines := section737.lines.filter LabFilter.notSkip }, { section738 with lines := section738.lines.filter LabFilter.notSkip }, { section739 with lines := section739.lines.filter LabFilter.notSkip }, { section740 with lines := section740.lines.filter LabFilter.notSkip }, { section741 with lines := section741.lines.filter LabFilter.notSkip }, { section742 with lines := section742.lines.filter LabFilter.notSkip }, { section743 with lines := section743.lines.filter LabFilter.notSkip }, { section744 with lines := section744.lines.filter LabFilter.notSkip }, { section745 with lines := section745.lines.filter LabFilter.notSkip }, { section746 with lines := section746.lines.filter LabFilter.notSkip }, { section747 with lines := section747.lines.filter LabFilter.notSkip }, { section748 with lines := section748.lines.filter LabFilter.notSkip }, { section749 with lines := section749.lines.filter LabFilter.notSkip }, { section750 with lines := section750.lines.filter LabFilter.notSkip }, { section751 with lines := section751.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered736_eq, Filtered737_eq, Filtered738_eq, Filtered739_eq, Filtered740_eq, Filtered741_eq, Filtered742_eq, Filtered743_eq, Filtered744_eq, Filtered745_eq, Filtered746_eq, Filtered747_eq, Filtered748_eq, Filtered749_eq, Filtered750_eq, Filtered751_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk736_751
