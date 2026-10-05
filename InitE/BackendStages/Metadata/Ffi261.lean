import InitE.BackendStages.Metadata.Data261
import InitE.BackendStages.Filtered261
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis261_eq : ffiLines Filtered261.lines = localFfis261 := by
  with_unfolding_all rfl
theorem ffiStep261 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis261) : LabToTarget.findFfiNames (Filtered261 :: rest) = suffixFfis261 := by
  rw [findFfiNames_section, localFfis261_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep261
end InitE.BackendStages.Metadata
