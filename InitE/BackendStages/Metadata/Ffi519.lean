import InitE.BackendStages.Metadata.Data519
import InitE.BackendStages.Filtered519
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis519_eq : ffiLines Filtered519.lines = localFfis519 := by
  with_unfolding_all rfl
theorem ffiStep519 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis519) : LabToTarget.findFfiNames (Filtered519 :: rest) = suffixFfis519 := by
  rw [findFfiNames_section, localFfis519_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep519
end InitE.BackendStages.Metadata
