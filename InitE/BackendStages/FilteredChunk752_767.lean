import InitE.BackendStages.SectionChunk752_767
import InitE.BackendStages.Filtered752
import InitE.BackendStages.Filtered753
import InitE.BackendStages.Filtered754
import InitE.BackendStages.Filtered755
import InitE.BackendStages.Filtered756
import InitE.BackendStages.Filtered757
import InitE.BackendStages.Filtered758
import InitE.BackendStages.Filtered759
import InitE.BackendStages.Filtered760
import InitE.BackendStages.Filtered761
import InitE.BackendStages.Filtered762
import InitE.BackendStages.Filtered763
import InitE.BackendStages.Filtered764
import InitE.BackendStages.Filtered765
import InitE.BackendStages.Filtered766
import InitE.BackendStages.Filtered767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk752_767
def sections : LabSem.LabProgHOL 64 := [Filtered752, Filtered753, Filtered754, Filtered755, Filtered756, Filtered757, Filtered758, Filtered759, Filtered760, Filtered761, Filtered762, Filtered763, Filtered764, Filtered765, Filtered766, Filtered767]
theorem compiled_eq : SectionChunk752_767.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section752 with lines := section752.lines.filter LabFilter.notSkip }, { section753 with lines := section753.lines.filter LabFilter.notSkip }, { section754 with lines := section754.lines.filter LabFilter.notSkip }, { section755 with lines := section755.lines.filter LabFilter.notSkip }, { section756 with lines := section756.lines.filter LabFilter.notSkip }, { section757 with lines := section757.lines.filter LabFilter.notSkip }, { section758 with lines := section758.lines.filter LabFilter.notSkip }, { section759 with lines := section759.lines.filter LabFilter.notSkip }, { section760 with lines := section760.lines.filter LabFilter.notSkip }, { section761 with lines := section761.lines.filter LabFilter.notSkip }, { section762 with lines := section762.lines.filter LabFilter.notSkip }, { section763 with lines := section763.lines.filter LabFilter.notSkip }, { section764 with lines := section764.lines.filter LabFilter.notSkip }, { section765 with lines := section765.lines.filter LabFilter.notSkip }, { section766 with lines := section766.lines.filter LabFilter.notSkip }, { section767 with lines := section767.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered752_eq, Filtered753_eq, Filtered754_eq, Filtered755_eq, Filtered756_eq, Filtered757_eq, Filtered758_eq, Filtered759_eq, Filtered760_eq, Filtered761_eq, Filtered762_eq, Filtered763_eq, Filtered764_eq, Filtered765_eq, Filtered766_eq, Filtered767_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk752_767
