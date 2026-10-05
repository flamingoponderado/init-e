import InitE.BackendStages.Metadata.Data233
import InitE.BackendStages.Padded233
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep233 : walkShmemLines Padded233.lines 89832 beforeFfis233 beforeShmem233 = (99248, afterFfis233, afterShmem233) := by
  with_unfolding_all rfl
theorem shmemStep233 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded233 :: rest) 89832 beforeFfis233 beforeShmem233 = LabToTarget.getShmemInfo rest 99248 afterFfis233 afterShmem233 := by
  rw [getShmemInfo_section, walkStep233]
theorem symbolLength233 : LabToTarget.secLength Padded233.lines 0 = 9416 := by
  with_unfolding_all rfl
#print axioms shmemStep233
#print axioms symbolLength233
end InitE.BackendStages.Metadata
