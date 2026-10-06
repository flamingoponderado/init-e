import InitE.BackendStages.SectionChunk304_319
import InitE.BackendStages.Filtered304
import InitE.BackendStages.Filtered305
import InitE.BackendStages.Filtered306
import InitE.BackendStages.Filtered307
import InitE.BackendStages.Filtered308
import InitE.BackendStages.Filtered309
import InitE.BackendStages.Filtered310
import InitE.BackendStages.Filtered311
import InitE.BackendStages.Filtered312
import InitE.BackendStages.Filtered313
import InitE.BackendStages.Filtered314
import InitE.BackendStages.Filtered315
import InitE.BackendStages.Filtered316
import InitE.BackendStages.Filtered317
import InitE.BackendStages.Filtered318
import InitE.BackendStages.Filtered319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk304_319
def sections : LabSem.LabProgHOL 64 := [Filtered304, Filtered305, Filtered306, Filtered307, Filtered308, Filtered309, Filtered310, Filtered311, Filtered312, Filtered313, Filtered314, Filtered315, Filtered316, Filtered317, Filtered318, Filtered319]
theorem compiled_eq : SectionChunk304_319.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section304 with lines := section304.lines.filter LabFilter.notSkip }, { section305 with lines := section305.lines.filter LabFilter.notSkip }, { section306 with lines := section306.lines.filter LabFilter.notSkip }, { section307 with lines := section307.lines.filter LabFilter.notSkip }, { section308 with lines := section308.lines.filter LabFilter.notSkip }, { section309 with lines := section309.lines.filter LabFilter.notSkip }, { section310 with lines := section310.lines.filter LabFilter.notSkip }, { section311 with lines := section311.lines.filter LabFilter.notSkip }, { section312 with lines := section312.lines.filter LabFilter.notSkip }, { section313 with lines := section313.lines.filter LabFilter.notSkip }, { section314 with lines := section314.lines.filter LabFilter.notSkip }, { section315 with lines := section315.lines.filter LabFilter.notSkip }, { section316 with lines := section316.lines.filter LabFilter.notSkip }, { section317 with lines := section317.lines.filter LabFilter.notSkip }, { section318 with lines := section318.lines.filter LabFilter.notSkip }, { section319 with lines := section319.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered304_eq, Filtered305_eq, Filtered306_eq, Filtered307_eq, Filtered308_eq, Filtered309_eq, Filtered310_eq, Filtered311_eq, Filtered312_eq, Filtered313_eq, Filtered314_eq, Filtered315_eq, Filtered316_eq, Filtered317_eq, Filtered318_eq, Filtered319_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk304_319
