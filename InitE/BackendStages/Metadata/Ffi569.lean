import InitE.BackendStages.Metadata.Data569
import InitE.BackendStages.Filtered569
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis569_eq : ffiLines Filtered569.lines = localFfis569 := by
  with_unfolding_all rfl
theorem ffiStep569 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis569) : LabToTarget.findFfiNames (Filtered569 :: rest) = suffixFfis569 := by
  rw [findFfiNames_section, localFfis569_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep569
end InitE.BackendStages.Metadata
