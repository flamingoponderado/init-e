import InitE.BackendStages.Metadata.Data733
import InitE.BackendStages.Filtered733
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis733_eq : ffiLines Filtered733.lines = localFfis733 := by
  with_unfolding_all rfl
theorem ffiStep733 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis733) : LabToTarget.findFfiNames (Filtered733 :: rest) = suffixFfis733 := by
  rw [findFfiNames_section, localFfis733_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep733
end InitE.BackendStages.Metadata
