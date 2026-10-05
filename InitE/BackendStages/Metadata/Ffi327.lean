import InitE.BackendStages.Metadata.Data327
import InitE.BackendStages.Filtered327
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis327_eq : ffiLines Filtered327.lines = localFfis327 := by
  with_unfolding_all rfl
theorem ffiStep327 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis327) : LabToTarget.findFfiNames (Filtered327 :: rest) = suffixFfis327 := by
  rw [findFfiNames_section, localFfis327_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep327
end InitE.BackendStages.Metadata
