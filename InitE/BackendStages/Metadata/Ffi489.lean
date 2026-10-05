import InitE.BackendStages.Metadata.Data489
import InitE.BackendStages.Filtered489
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis489_eq : ffiLines Filtered489.lines = localFfis489 := by
  with_unfolding_all rfl
theorem ffiStep489 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis489) : LabToTarget.findFfiNames (Filtered489 :: rest) = suffixFfis489 := by
  rw [findFfiNames_section, localFfis489_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep489
end InitE.BackendStages.Metadata
