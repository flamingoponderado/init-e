import InitE.BackendStages.Metadata.Data500
import InitE.BackendStages.Padded500
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep500 : walkShmemLines Padded500.lines 312764 beforeFfis500 beforeShmem500 = (313528, afterFfis500, afterShmem500) := by
  with_unfolding_all rfl
theorem shmemStep500 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded500 :: rest) 312764 beforeFfis500 beforeShmem500 = LabToTarget.getShmemInfo rest 313528 afterFfis500 afterShmem500 := by
  rw [getShmemInfo_section, walkStep500]
theorem symbolLength500 : LabToTarget.secLength Padded500.lines 0 = 764 := by
  with_unfolding_all rfl
#print axioms shmemStep500
#print axioms symbolLength500
end InitE.BackendStages.Metadata
