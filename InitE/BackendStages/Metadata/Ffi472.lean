import InitE.BackendStages.Metadata.Data472
import InitE.BackendStages.Filtered472
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis472_eq : ffiLines Filtered472.lines = localFfis472 := by
  with_unfolding_all rfl
theorem ffiStep472 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis472) : LabToTarget.findFfiNames (Filtered472 :: rest) = suffixFfis472 := by
  rw [findFfiNames_section, localFfis472_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep472
end InitE.BackendStages.Metadata
