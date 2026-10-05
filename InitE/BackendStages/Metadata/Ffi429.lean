import InitE.BackendStages.Metadata.Data429
import InitE.BackendStages.Filtered429
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis429_eq : ffiLines Filtered429.lines = localFfis429 := by
  with_unfolding_all rfl
theorem ffiStep429 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis429) : LabToTarget.findFfiNames (Filtered429 :: rest) = suffixFfis429 := by
  rw [findFfiNames_section, localFfis429_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep429
end InitE.BackendStages.Metadata
