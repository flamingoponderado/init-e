import InitE.BackendStages.Metadata.Data143
import InitE.BackendStages.Filtered143
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis143_eq : ffiLines Filtered143.lines = localFfis143 := by
  with_unfolding_all rfl
theorem ffiStep143 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis143) : LabToTarget.findFfiNames (Filtered143 :: rest) = suffixFfis143 := by
  rw [findFfiNames_section, localFfis143_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep143
end InitE.BackendStages.Metadata
