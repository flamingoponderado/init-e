import InitE.BackendStages.SectionChunk160_175
import InitE.BackendStages.Filtered160
import InitE.BackendStages.Filtered161
import InitE.BackendStages.Filtered162
import InitE.BackendStages.Filtered163
import InitE.BackendStages.Filtered164
import InitE.BackendStages.Filtered165
import InitE.BackendStages.Filtered166
import InitE.BackendStages.Filtered167
import InitE.BackendStages.Filtered168
import InitE.BackendStages.Filtered169
import InitE.BackendStages.Filtered170
import InitE.BackendStages.Filtered171
import InitE.BackendStages.Filtered172
import InitE.BackendStages.Filtered173
import InitE.BackendStages.Filtered174
import InitE.BackendStages.Filtered175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.FilteredChunk160_175
def sections : LabSem.LabProgHOL 64 := [Filtered160, Filtered161, Filtered162, Filtered163, Filtered164, Filtered165, Filtered166, Filtered167, Filtered168, Filtered169, Filtered170, Filtered171, Filtered172, Filtered173, Filtered174, Filtered175]
theorem compiled_eq : SectionChunk160_175.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section160 with lines := section160.lines.filter LabFilter.notSkip }, { section161 with lines := section161.lines.filter LabFilter.notSkip }, { section162 with lines := section162.lines.filter LabFilter.notSkip }, { section163 with lines := section163.lines.filter LabFilter.notSkip }, { section164 with lines := section164.lines.filter LabFilter.notSkip }, { section165 with lines := section165.lines.filter LabFilter.notSkip }, { section166 with lines := section166.lines.filter LabFilter.notSkip }, { section167 with lines := section167.lines.filter LabFilter.notSkip }, { section168 with lines := section168.lines.filter LabFilter.notSkip }, { section169 with lines := section169.lines.filter LabFilter.notSkip }, { section170 with lines := section170.lines.filter LabFilter.notSkip }, { section171 with lines := section171.lines.filter LabFilter.notSkip }, { section172 with lines := section172.lines.filter LabFilter.notSkip }, { section173 with lines := section173.lines.filter LabFilter.notSkip }, { section174 with lines := section174.lines.filter LabFilter.notSkip }, { section175 with lines := section175.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered160_eq, Filtered161_eq, Filtered162_eq, Filtered163_eq, Filtered164_eq, Filtered165_eq, Filtered166_eq, Filtered167_eq, Filtered168_eq, Filtered169_eq, Filtered170_eq, Filtered171_eq, Filtered172_eq, Filtered173_eq, Filtered174_eq, Filtered175_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.FilteredChunk160_175
