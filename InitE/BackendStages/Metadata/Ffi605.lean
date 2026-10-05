import InitE.BackendStages.Metadata.Data605
import InitE.BackendStages.Filtered605
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis605_eq : ffiLines Filtered605.lines = localFfis605 := by
  with_unfolding_all rfl
theorem ffiStep605 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis605) : LabToTarget.findFfiNames (Filtered605 :: rest) = suffixFfis605 := by
  rw [findFfiNames_section, localFfis605_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep605
end InitE.BackendStages.Metadata
