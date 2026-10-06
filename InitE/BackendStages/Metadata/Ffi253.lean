import InitE.BackendStages.Metadata.Data253
import InitE.BackendStages.Filtered253
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis253_eq : ffiLines Filtered253.lines = localFfis253 := by
  with_unfolding_all rfl
theorem ffiStep253 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis253) : LabToTarget.findFfiNames (Filtered253 :: rest) = suffixFfis253 := by
  rw [findFfiNames_section, localFfis253_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep253
end InitE.BackendStages.Metadata
