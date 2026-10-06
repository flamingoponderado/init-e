import InitE.BackendStages.SectionChunk352_367
import InitE.BackendStages.Filtered352
import InitE.BackendStages.Filtered353
import InitE.BackendStages.Filtered354
import InitE.BackendStages.Filtered355
import InitE.BackendStages.Filtered356
import InitE.BackendStages.Filtered357
import InitE.BackendStages.Filtered358
import InitE.BackendStages.Filtered359
import InitE.BackendStages.Filtered360
import InitE.BackendStages.Filtered361
import InitE.BackendStages.Filtered362
import InitE.BackendStages.Filtered363
import InitE.BackendStages.Filtered364
import InitE.BackendStages.Filtered365
import InitE.BackendStages.Filtered366
import InitE.BackendStages.Filtered367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk352_367
def sections : LabSem.LabProgHOL 64 := [Filtered352, Filtered353, Filtered354, Filtered355, Filtered356, Filtered357, Filtered358, Filtered359, Filtered360, Filtered361, Filtered362, Filtered363, Filtered364, Filtered365, Filtered366, Filtered367]
theorem compiled_eq : SectionChunk352_367.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section352 with lines := section352.lines.filter LabFilter.notSkip }, { section353 with lines := section353.lines.filter LabFilter.notSkip }, { section354 with lines := section354.lines.filter LabFilter.notSkip }, { section355 with lines := section355.lines.filter LabFilter.notSkip }, { section356 with lines := section356.lines.filter LabFilter.notSkip }, { section357 with lines := section357.lines.filter LabFilter.notSkip }, { section358 with lines := section358.lines.filter LabFilter.notSkip }, { section359 with lines := section359.lines.filter LabFilter.notSkip }, { section360 with lines := section360.lines.filter LabFilter.notSkip }, { section361 with lines := section361.lines.filter LabFilter.notSkip }, { section362 with lines := section362.lines.filter LabFilter.notSkip }, { section363 with lines := section363.lines.filter LabFilter.notSkip }, { section364 with lines := section364.lines.filter LabFilter.notSkip }, { section365 with lines := section365.lines.filter LabFilter.notSkip }, { section366 with lines := section366.lines.filter LabFilter.notSkip }, { section367 with lines := section367.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered352_eq, Filtered353_eq, Filtered354_eq, Filtered355_eq, Filtered356_eq, Filtered357_eq, Filtered358_eq, Filtered359_eq, Filtered360_eq, Filtered361_eq, Filtered362_eq, Filtered363_eq, Filtered364_eq, Filtered365_eq, Filtered366_eq, Filtered367_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk352_367
