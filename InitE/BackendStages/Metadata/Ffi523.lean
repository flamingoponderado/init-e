import InitE.BackendStages.Metadata.Data523
import InitE.BackendStages.Filtered523
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis523_eq : ffiLines Filtered523.lines = localFfis523 := by
  with_unfolding_all rfl
theorem ffiStep523 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis523) : LabToTarget.findFfiNames (Filtered523 :: rest) = suffixFfis523 := by
  rw [findFfiNames_section, localFfis523_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep523
end InitE.BackendStages.Metadata
