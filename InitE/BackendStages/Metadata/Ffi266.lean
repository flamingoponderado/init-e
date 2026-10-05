import InitE.BackendStages.Metadata.Data266
import InitE.BackendStages.Filtered266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis266_eq : ffiLines Filtered266.lines = localFfis266 := by
  with_unfolding_all rfl
theorem ffiStep266 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis266) : LabToTarget.findFfiNames (Filtered266 :: rest) = suffixFfis266 := by
  rw [findFfiNames_section, localFfis266_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep266
end InitE.BackendStages.Metadata
