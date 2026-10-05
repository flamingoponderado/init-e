import InitE.BackendStages.Metadata.Data94
import InitE.BackendStages.Filtered94
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis94_eq : ffiLines Filtered94.lines = localFfis94 := by
  with_unfolding_all rfl
theorem ffiStep94 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis94) : LabToTarget.findFfiNames (Filtered94 :: rest) = suffixFfis94 := by
  rw [findFfiNames_section, localFfis94_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep94
end InitE.BackendStages.Metadata
