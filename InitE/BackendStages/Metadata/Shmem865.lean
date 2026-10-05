import InitE.BackendStages.Metadata.Data865
import InitE.BackendStages.Padded865
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep865 : walkShmemLines Padded865.lines 860160 beforeFfis865 beforeShmem865 = (861868, afterFfis865, afterShmem865) := by
  with_unfolding_all rfl
theorem shmemStep865 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded865 :: rest) 860160 beforeFfis865 beforeShmem865 = LabToTarget.getShmemInfo rest 861868 afterFfis865 afterShmem865 := by
  rw [getShmemInfo_section, walkStep865]
theorem symbolLength865 : LabToTarget.secLength Padded865.lines 0 = 1708 := by
  with_unfolding_all rfl
#print axioms shmemStep865
#print axioms symbolLength865
end InitE.BackendStages.Metadata
