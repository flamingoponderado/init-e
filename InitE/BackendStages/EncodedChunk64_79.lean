import InitE.BackendStages.FilteredChunk64_79
import InitE.BackendStages.Encoded64
import InitE.BackendStages.Encoded65
import InitE.BackendStages.Encoded66
import InitE.BackendStages.Encoded67
import InitE.BackendStages.Encoded68
import InitE.BackendStages.Encoded69
import InitE.BackendStages.Encoded70
import InitE.BackendStages.Encoded71
import InitE.BackendStages.Encoded72
import InitE.BackendStages.Encoded73
import InitE.BackendStages.Encoded74
import InitE.BackendStages.Encoded75
import InitE.BackendStages.Encoded76
import InitE.BackendStages.Encoded77
import InitE.BackendStages.Encoded78
import InitE.BackendStages.Encoded79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.EncodedChunk64_79
def sections : LabSem.LabProgHOL 64 := [Encoded64, Encoded65, Encoded66, Encoded67, Encoded68, Encoded69, Encoded70, Encoded71, Encoded72, Encoded73, Encoded74, Encoded75, Encoded76, Encoded77, Encoded78, Encoded79]
theorem compiled_eq : FilteredChunk64_79.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered64, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered65, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered66, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered67, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered68, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered69, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered70, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered71, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered72, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered73, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered74, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered75, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered76, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered77, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered78, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered79] = sections
  rw [Encoded64_eq, Encoded65_eq, Encoded66_eq, Encoded67_eq, Encoded68_eq, Encoded69_eq, Encoded70_eq, Encoded71_eq, Encoded72_eq, Encoded73_eq, Encoded74_eq, Encoded75_eq, Encoded76_eq, Encoded77_eq, Encoded78_eq, Encoded79_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.EncodedChunk64_79
