import InitE.BackendStages.Metadata.Data535
import InitE.BackendStages.Filtered535
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis535_eq : ffiLines Filtered535.lines = localFfis535 := by
  with_unfolding_all rfl
theorem ffiStep535 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis535) : LabToTarget.findFfiNames (Filtered535 :: rest) = suffixFfis535 := by
  rw [findFfiNames_section, localFfis535_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep535
end InitE.BackendStages.Metadata
