import InitE.BackendStages.SectionChunk80_95
import InitE.BackendStages.Filtered80
import InitE.BackendStages.Filtered81
import InitE.BackendStages.Filtered82
import InitE.BackendStages.Filtered83
import InitE.BackendStages.Filtered84
import InitE.BackendStages.Filtered85
import InitE.BackendStages.Filtered86
import InitE.BackendStages.Filtered87
import InitE.BackendStages.Filtered88
import InitE.BackendStages.Filtered89
import InitE.BackendStages.Filtered90
import InitE.BackendStages.Filtered91
import InitE.BackendStages.Filtered92
import InitE.BackendStages.Filtered93
import InitE.BackendStages.Filtered94
import InitE.BackendStages.Filtered95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk80_95
def sections : LabSem.LabProgHOL 64 := [Filtered80, Filtered81, Filtered82, Filtered83, Filtered84, Filtered85, Filtered86, Filtered87, Filtered88, Filtered89, Filtered90, Filtered91, Filtered92, Filtered93, Filtered94, Filtered95]
theorem compiled_eq : SectionChunk80_95.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section80 with lines := section80.lines.filter LabFilter.notSkip }, { section81 with lines := section81.lines.filter LabFilter.notSkip }, { section82 with lines := section82.lines.filter LabFilter.notSkip }, { section83 with lines := section83.lines.filter LabFilter.notSkip }, { section84 with lines := section84.lines.filter LabFilter.notSkip }, { section85 with lines := section85.lines.filter LabFilter.notSkip }, { section86 with lines := section86.lines.filter LabFilter.notSkip }, { section87 with lines := section87.lines.filter LabFilter.notSkip }, { section88 with lines := section88.lines.filter LabFilter.notSkip }, { section89 with lines := section89.lines.filter LabFilter.notSkip }, { section90 with lines := section90.lines.filter LabFilter.notSkip }, { section91 with lines := section91.lines.filter LabFilter.notSkip }, { section92 with lines := section92.lines.filter LabFilter.notSkip }, { section93 with lines := section93.lines.filter LabFilter.notSkip }, { section94 with lines := section94.lines.filter LabFilter.notSkip }, { section95 with lines := section95.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered80_eq, Filtered81_eq, Filtered82_eq, Filtered83_eq, Filtered84_eq, Filtered85_eq, Filtered86_eq, Filtered87_eq, Filtered88_eq, Filtered89_eq, Filtered90_eq, Filtered91_eq, Filtered92_eq, Filtered93_eq, Filtered94_eq, Filtered95_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk80_95
