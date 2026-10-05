import InitE.BackendStages.Metadata.Data557
import InitE.BackendStages.Filtered557
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis557_eq : ffiLines Filtered557.lines = localFfis557 := by
  with_unfolding_all rfl
theorem ffiStep557 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis557) : LabToTarget.findFfiNames (Filtered557 :: rest) = suffixFfis557 := by
  rw [findFfiNames_section, localFfis557_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep557
end InitE.BackendStages.Metadata
