import InitE.BackendStages.Metadata.Data803
import InitE.BackendStages.Filtered803
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis803_eq : ffiLines Filtered803.lines = localFfis803 := by
  with_unfolding_all rfl
theorem ffiStep803 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis803) : LabToTarget.findFfiNames (Filtered803 :: rest) = suffixFfis803 := by
  rw [findFfiNames_section, localFfis803_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep803
end InitE.BackendStages.Metadata
