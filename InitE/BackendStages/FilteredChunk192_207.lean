import InitE.BackendStages.SectionChunk192_207
import InitE.BackendStages.Filtered192
import InitE.BackendStages.Filtered193
import InitE.BackendStages.Filtered194
import InitE.BackendStages.Filtered195
import InitE.BackendStages.Filtered196
import InitE.BackendStages.Filtered197
import InitE.BackendStages.Filtered198
import InitE.BackendStages.Filtered199
import InitE.BackendStages.Filtered200
import InitE.BackendStages.Filtered201
import InitE.BackendStages.Filtered202
import InitE.BackendStages.Filtered203
import InitE.BackendStages.Filtered204
import InitE.BackendStages.Filtered205
import InitE.BackendStages.Filtered206
import InitE.BackendStages.Filtered207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk192_207
def sections : LabSem.LabProgHOL 64 := [Filtered192, Filtered193, Filtered194, Filtered195, Filtered196, Filtered197, Filtered198, Filtered199, Filtered200, Filtered201, Filtered202, Filtered203, Filtered204, Filtered205, Filtered206, Filtered207]
theorem compiled_eq : SectionChunk192_207.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section192 with lines := section192.lines.filter LabFilter.notSkip }, { section193 with lines := section193.lines.filter LabFilter.notSkip }, { section194 with lines := section194.lines.filter LabFilter.notSkip }, { section195 with lines := section195.lines.filter LabFilter.notSkip }, { section196 with lines := section196.lines.filter LabFilter.notSkip }, { section197 with lines := section197.lines.filter LabFilter.notSkip }, { section198 with lines := section198.lines.filter LabFilter.notSkip }, { section199 with lines := section199.lines.filter LabFilter.notSkip }, { section200 with lines := section200.lines.filter LabFilter.notSkip }, { section201 with lines := section201.lines.filter LabFilter.notSkip }, { section202 with lines := section202.lines.filter LabFilter.notSkip }, { section203 with lines := section203.lines.filter LabFilter.notSkip }, { section204 with lines := section204.lines.filter LabFilter.notSkip }, { section205 with lines := section205.lines.filter LabFilter.notSkip }, { section206 with lines := section206.lines.filter LabFilter.notSkip }, { section207 with lines := section207.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered192_eq, Filtered193_eq, Filtered194_eq, Filtered195_eq, Filtered196_eq, Filtered197_eq, Filtered198_eq, Filtered199_eq, Filtered200_eq, Filtered201_eq, Filtered202_eq, Filtered203_eq, Filtered204_eq, Filtered205_eq, Filtered206_eq, Filtered207_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk192_207
