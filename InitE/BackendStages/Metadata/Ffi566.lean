import InitE.BackendStages.Metadata.Data566
import InitE.BackendStages.Filtered566
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis566_eq : ffiLines Filtered566.lines = localFfis566 := by
  with_unfolding_all rfl
theorem ffiStep566 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis566) : LabToTarget.findFfiNames (Filtered566 :: rest) = suffixFfis566 := by
  rw [findFfiNames_section, localFfis566_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep566
end InitE.BackendStages.Metadata
