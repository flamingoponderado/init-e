import InitE.BackendStages.Metadata.Data262
import InitE.BackendStages.Filtered262
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis262_eq : ffiLines Filtered262.lines = localFfis262 := by
  with_unfolding_all rfl
theorem ffiStep262 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis262) : LabToTarget.findFfiNames (Filtered262 :: rest) = suffixFfis262 := by
  rw [findFfiNames_section, localFfis262_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep262
end InitE.BackendStages.Metadata
