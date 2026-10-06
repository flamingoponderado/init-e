import InitE.BackendStages.Metadata.Data177
import InitE.BackendStages.Filtered177
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis177_eq : ffiLines Filtered177.lines = localFfis177 := by
  with_unfolding_all rfl
theorem ffiStep177 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis177) : LabToTarget.findFfiNames (Filtered177 :: rest) = suffixFfis177 := by
  rw [findFfiNames_section, localFfis177_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep177
end InitE.BackendStages.Metadata
