import InitE.BackendStages.Metadata.Data75
import InitE.BackendStages.Filtered75
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis75_eq : ffiLines Filtered75.lines = localFfis75 := by
  with_unfolding_all rfl
theorem ffiStep75 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis75) : LabToTarget.findFfiNames (Filtered75 :: rest) = suffixFfis75 := by
  rw [findFfiNames_section, localFfis75_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep75
end InitE.BackendStages.Metadata
