import InitE.BackendStages.Metadata.Data736
import InitE.BackendStages.Filtered736
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis736_eq : ffiLines Filtered736.lines = localFfis736 := by
  with_unfolding_all rfl
theorem ffiStep736 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis736) : LabToTarget.findFfiNames (Filtered736 :: rest) = suffixFfis736 := by
  rw [findFfiNames_section, localFfis736_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep736
end InitE.BackendStages.Metadata
