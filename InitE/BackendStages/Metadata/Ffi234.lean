import InitE.BackendStages.Metadata.Data234
import InitE.BackendStages.Filtered234
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis234_eq : ffiLines Filtered234.lines = localFfis234 := by
  with_unfolding_all rfl
theorem ffiStep234 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis234) : LabToTarget.findFfiNames (Filtered234 :: rest) = suffixFfis234 := by
  rw [findFfiNames_section, localFfis234_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep234
end InitE.BackendStages.Metadata
