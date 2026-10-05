import InitE.BackendStages.Metadata.Data440
import InitE.BackendStages.Filtered440
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis440_eq : ffiLines Filtered440.lines = localFfis440 := by
  with_unfolding_all rfl
theorem ffiStep440 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis440) : LabToTarget.findFfiNames (Filtered440 :: rest) = suffixFfis440 := by
  rw [findFfiNames_section, localFfis440_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep440
end InitE.BackendStages.Metadata
