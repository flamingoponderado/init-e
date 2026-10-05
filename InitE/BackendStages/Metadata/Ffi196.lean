import InitE.BackendStages.Metadata.Data196
import InitE.BackendStages.Filtered196
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis196_eq : ffiLines Filtered196.lines = localFfis196 := by
  with_unfolding_all rfl
theorem ffiStep196 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis196) : LabToTarget.findFfiNames (Filtered196 :: rest) = suffixFfis196 := by
  rw [findFfiNames_section, localFfis196_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep196
end InitE.BackendStages.Metadata
