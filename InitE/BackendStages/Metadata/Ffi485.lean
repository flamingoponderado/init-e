import InitE.BackendStages.Metadata.Data485
import InitE.BackendStages.Filtered485
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis485_eq : ffiLines Filtered485.lines = localFfis485 := by
  with_unfolding_all rfl
theorem ffiStep485 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis485) : LabToTarget.findFfiNames (Filtered485 :: rest) = suffixFfis485 := by
  rw [findFfiNames_section, localFfis485_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep485
end InitE.BackendStages.Metadata
