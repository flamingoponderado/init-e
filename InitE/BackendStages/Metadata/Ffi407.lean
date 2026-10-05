import InitE.BackendStages.Metadata.Data407
import InitE.BackendStages.Filtered407
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis407_eq : ffiLines Filtered407.lines = localFfis407 := by
  with_unfolding_all rfl
theorem ffiStep407 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis407) : LabToTarget.findFfiNames (Filtered407 :: rest) = suffixFfis407 := by
  rw [findFfiNames_section, localFfis407_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep407
end InitE.BackendStages.Metadata
