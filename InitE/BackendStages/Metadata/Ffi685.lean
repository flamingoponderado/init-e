import InitE.BackendStages.Metadata.Data685
import InitE.BackendStages.Filtered685
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis685_eq : ffiLines Filtered685.lines = localFfis685 := by
  with_unfolding_all rfl
theorem ffiStep685 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis685) : LabToTarget.findFfiNames (Filtered685 :: rest) = suffixFfis685 := by
  rw [findFfiNames_section, localFfis685_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep685
end InitE.BackendStages.Metadata
