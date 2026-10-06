import InitE.BackendStages.Metadata.Data115
import InitE.BackendStages.Padded115
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep115 : walkShmemLines Padded115.lines 12192 beforeFfis115 beforeShmem115 = (12304, afterFfis115, afterShmem115) := by
  with_unfolding_all rfl
theorem shmemStep115 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded115 :: rest) 12192 beforeFfis115 beforeShmem115 = LabToTarget.getShmemInfo rest 12304 afterFfis115 afterShmem115 := by
  rw [getShmemInfo_section, walkStep115]
theorem symbolLength115 : LabToTarget.secLength Padded115.lines 0 = 112 := by
  with_unfolding_all rfl
#print axioms shmemStep115
#print axioms symbolLength115
end InitE.BackendStages.Metadata
