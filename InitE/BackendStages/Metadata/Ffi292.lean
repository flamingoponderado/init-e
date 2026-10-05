import InitE.BackendStages.Metadata.Data292
import InitE.BackendStages.Filtered292
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis292_eq : ffiLines Filtered292.lines = localFfis292 := by
  with_unfolding_all rfl
theorem ffiStep292 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis292) : LabToTarget.findFfiNames (Filtered292 :: rest) = suffixFfis292 := by
  rw [findFfiNames_section, localFfis292_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep292
end InitE.BackendStages.Metadata
