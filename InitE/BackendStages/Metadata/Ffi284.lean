import InitE.BackendStages.Metadata.Data284
import InitE.BackendStages.Filtered284
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis284_eq : ffiLines Filtered284.lines = localFfis284 := by
  with_unfolding_all rfl
theorem ffiStep284 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis284) : LabToTarget.findFfiNames (Filtered284 :: rest) = suffixFfis284 := by
  rw [findFfiNames_section, localFfis284_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep284
end InitE.BackendStages.Metadata
