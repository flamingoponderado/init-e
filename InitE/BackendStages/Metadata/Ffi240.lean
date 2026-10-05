import InitE.BackendStages.Metadata.Data240
import InitE.BackendStages.Filtered240
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis240_eq : ffiLines Filtered240.lines = localFfis240 := by
  with_unfolding_all rfl
theorem ffiStep240 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis240) : LabToTarget.findFfiNames (Filtered240 :: rest) = suffixFfis240 := by
  rw [findFfiNames_section, localFfis240_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep240
end InitE.BackendStages.Metadata
