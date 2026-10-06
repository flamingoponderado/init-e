import InitE.BackendStages.Metadata.Data317
import InitE.BackendStages.Filtered317
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis317_eq : ffiLines Filtered317.lines = localFfis317 := by
  with_unfolding_all rfl
theorem ffiStep317 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis317) : LabToTarget.findFfiNames (Filtered317 :: rest) = suffixFfis317 := by
  rw [findFfiNames_section, localFfis317_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep317
end InitE.BackendStages.Metadata
