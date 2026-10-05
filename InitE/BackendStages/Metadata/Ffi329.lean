import InitE.BackendStages.Metadata.Data329
import InitE.BackendStages.Filtered329
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis329_eq : ffiLines Filtered329.lines = localFfis329 := by
  with_unfolding_all rfl
theorem ffiStep329 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis329) : LabToTarget.findFfiNames (Filtered329 :: rest) = suffixFfis329 := by
  rw [findFfiNames_section, localFfis329_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep329
end InitE.BackendStages.Metadata
