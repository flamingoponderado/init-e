import InitE.BackendStages.SectionChunk784_799
import InitE.BackendStages.Filtered784
import InitE.BackendStages.Filtered785
import InitE.BackendStages.Filtered786
import InitE.BackendStages.Filtered787
import InitE.BackendStages.Filtered788
import InitE.BackendStages.Filtered789
import InitE.BackendStages.Filtered790
import InitE.BackendStages.Filtered791
import InitE.BackendStages.Filtered792
import InitE.BackendStages.Filtered793
import InitE.BackendStages.Filtered794
import InitE.BackendStages.Filtered795
import InitE.BackendStages.Filtered796
import InitE.BackendStages.Filtered797
import InitE.BackendStages.Filtered798
import InitE.BackendStages.Filtered799
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk784_799
def sections : LabSem.LabProgHOL 64 := [Filtered784, Filtered785, Filtered786, Filtered787, Filtered788, Filtered789, Filtered790, Filtered791, Filtered792, Filtered793, Filtered794, Filtered795, Filtered796, Filtered797, Filtered798, Filtered799]
theorem compiled_eq : SectionChunk784_799.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section784 with lines := section784.lines.filter LabFilter.notSkip }, { section785 with lines := section785.lines.filter LabFilter.notSkip }, { section786 with lines := section786.lines.filter LabFilter.notSkip }, { section787 with lines := section787.lines.filter LabFilter.notSkip }, { section788 with lines := section788.lines.filter LabFilter.notSkip }, { section789 with lines := section789.lines.filter LabFilter.notSkip }, { section790 with lines := section790.lines.filter LabFilter.notSkip }, { section791 with lines := section791.lines.filter LabFilter.notSkip }, { section792 with lines := section792.lines.filter LabFilter.notSkip }, { section793 with lines := section793.lines.filter LabFilter.notSkip }, { section794 with lines := section794.lines.filter LabFilter.notSkip }, { section795 with lines := section795.lines.filter LabFilter.notSkip }, { section796 with lines := section796.lines.filter LabFilter.notSkip }, { section797 with lines := section797.lines.filter LabFilter.notSkip }, { section798 with lines := section798.lines.filter LabFilter.notSkip }, { section799 with lines := section799.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered784_eq, Filtered785_eq, Filtered786_eq, Filtered787_eq, Filtered788_eq, Filtered789_eq, Filtered790_eq, Filtered791_eq, Filtered792_eq, Filtered793_eq, Filtered794_eq, Filtered795_eq, Filtered796_eq, Filtered797_eq, Filtered798_eq, Filtered799_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk784_799
