import InitE.BackendStages.Metadata.Data445
import InitE.BackendStages.Filtered445
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis445_eq : ffiLines Filtered445.lines = localFfis445 := by
  with_unfolding_all rfl
theorem ffiStep445 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis445) : LabToTarget.findFfiNames (Filtered445 :: rest) = suffixFfis445 := by
  rw [findFfiNames_section, localFfis445_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep445
end InitE.BackendStages.Metadata
