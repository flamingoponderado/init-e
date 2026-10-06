import InitE.BackendStages.Metadata.Data384
import InitE.BackendStages.Filtered384
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis384_eq : ffiLines Filtered384.lines = localFfis384 := by
  with_unfolding_all rfl
theorem ffiStep384 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis384) : LabToTarget.findFfiNames (Filtered384 :: rest) = suffixFfis384 := by
  rw [findFfiNames_section, localFfis384_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep384
end InitE.BackendStages.Metadata
