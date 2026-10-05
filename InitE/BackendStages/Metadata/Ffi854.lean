import InitE.BackendStages.Metadata.Data854
import InitE.BackendStages.Filtered854
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis854_eq : ffiLines Filtered854.lines = localFfis854 := by
  with_unfolding_all rfl
theorem ffiStep854 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis854) : LabToTarget.findFfiNames (Filtered854 :: rest) = suffixFfis854 := by
  rw [findFfiNames_section, localFfis854_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep854
end InitE.BackendStages.Metadata
