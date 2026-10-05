import InitE.BackendStages.SectionChunk128_143
import InitE.BackendStages.Filtered128
import InitE.BackendStages.Filtered129
import InitE.BackendStages.Filtered130
import InitE.BackendStages.Filtered131
import InitE.BackendStages.Filtered132
import InitE.BackendStages.Filtered133
import InitE.BackendStages.Filtered134
import InitE.BackendStages.Filtered135
import InitE.BackendStages.Filtered136
import InitE.BackendStages.Filtered137
import InitE.BackendStages.Filtered138
import InitE.BackendStages.Filtered139
import InitE.BackendStages.Filtered140
import InitE.BackendStages.Filtered141
import InitE.BackendStages.Filtered142
import InitE.BackendStages.Filtered143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk128_143
def sections : LabSem.LabProgHOL 64 := [Filtered128, Filtered129, Filtered130, Filtered131, Filtered132, Filtered133, Filtered134, Filtered135, Filtered136, Filtered137, Filtered138, Filtered139, Filtered140, Filtered141, Filtered142, Filtered143]
theorem compiled_eq : SectionChunk128_143.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section128 with lines := section128.lines.filter LabFilter.notSkip }, { section129 with lines := section129.lines.filter LabFilter.notSkip }, { section130 with lines := section130.lines.filter LabFilter.notSkip }, { section131 with lines := section131.lines.filter LabFilter.notSkip }, { section132 with lines := section132.lines.filter LabFilter.notSkip }, { section133 with lines := section133.lines.filter LabFilter.notSkip }, { section134 with lines := section134.lines.filter LabFilter.notSkip }, { section135 with lines := section135.lines.filter LabFilter.notSkip }, { section136 with lines := section136.lines.filter LabFilter.notSkip }, { section137 with lines := section137.lines.filter LabFilter.notSkip }, { section138 with lines := section138.lines.filter LabFilter.notSkip }, { section139 with lines := section139.lines.filter LabFilter.notSkip }, { section140 with lines := section140.lines.filter LabFilter.notSkip }, { section141 with lines := section141.lines.filter LabFilter.notSkip }, { section142 with lines := section142.lines.filter LabFilter.notSkip }, { section143 with lines := section143.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered128_eq, Filtered129_eq, Filtered130_eq, Filtered131_eq, Filtered132_eq, Filtered133_eq, Filtered134_eq, Filtered135_eq, Filtered136_eq, Filtered137_eq, Filtered138_eq, Filtered139_eq, Filtered140_eq, Filtered141_eq, Filtered142_eq, Filtered143_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk128_143
