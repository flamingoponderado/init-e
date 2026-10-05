import InitE.BackendStages.SectionChunk400_415
import InitE.BackendStages.Filtered400
import InitE.BackendStages.Filtered401
import InitE.BackendStages.Filtered402
import InitE.BackendStages.Filtered403
import InitE.BackendStages.Filtered404
import InitE.BackendStages.Filtered405
import InitE.BackendStages.Filtered406
import InitE.BackendStages.Filtered407
import InitE.BackendStages.Filtered408
import InitE.BackendStages.Filtered409
import InitE.BackendStages.Filtered410
import InitE.BackendStages.Filtered411
import InitE.BackendStages.Filtered412
import InitE.BackendStages.Filtered413
import InitE.BackendStages.Filtered414
import InitE.BackendStages.Filtered415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk400_415
def sections : LabSem.LabProgHOL 64 := [Filtered400, Filtered401, Filtered402, Filtered403, Filtered404, Filtered405, Filtered406, Filtered407, Filtered408, Filtered409, Filtered410, Filtered411, Filtered412, Filtered413, Filtered414, Filtered415]
theorem compiled_eq : SectionChunk400_415.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section400 with lines := section400.lines.filter LabFilter.notSkip }, { section401 with lines := section401.lines.filter LabFilter.notSkip }, { section402 with lines := section402.lines.filter LabFilter.notSkip }, { section403 with lines := section403.lines.filter LabFilter.notSkip }, { section404 with lines := section404.lines.filter LabFilter.notSkip }, { section405 with lines := section405.lines.filter LabFilter.notSkip }, { section406 with lines := section406.lines.filter LabFilter.notSkip }, { section407 with lines := section407.lines.filter LabFilter.notSkip }, { section408 with lines := section408.lines.filter LabFilter.notSkip }, { section409 with lines := section409.lines.filter LabFilter.notSkip }, { section410 with lines := section410.lines.filter LabFilter.notSkip }, { section411 with lines := section411.lines.filter LabFilter.notSkip }, { section412 with lines := section412.lines.filter LabFilter.notSkip }, { section413 with lines := section413.lines.filter LabFilter.notSkip }, { section414 with lines := section414.lines.filter LabFilter.notSkip }, { section415 with lines := section415.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered400_eq, Filtered401_eq, Filtered402_eq, Filtered403_eq, Filtered404_eq, Filtered405_eq, Filtered406_eq, Filtered407_eq, Filtered408_eq, Filtered409_eq, Filtered410_eq, Filtered411_eq, Filtered412_eq, Filtered413_eq, Filtered414_eq, Filtered415_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk400_415
