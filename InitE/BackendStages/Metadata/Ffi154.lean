import InitE.BackendStages.Metadata.Data154
import InitE.BackendStages.Filtered154
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis154_eq : ffiLines Filtered154.lines = localFfis154 := by
  with_unfolding_all rfl
theorem ffiStep154 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis154) : LabToTarget.findFfiNames (Filtered154 :: rest) = suffixFfis154 := by
  rw [findFfiNames_section, localFfis154_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep154
end InitE.BackendStages.Metadata
