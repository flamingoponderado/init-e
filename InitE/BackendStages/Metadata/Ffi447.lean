import InitE.BackendStages.Metadata.Data447
import InitE.BackendStages.Filtered447
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis447_eq : ffiLines Filtered447.lines = localFfis447 := by
  with_unfolding_all rfl
theorem ffiStep447 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis447) : LabToTarget.findFfiNames (Filtered447 :: rest) = suffixFfis447 := by
  rw [findFfiNames_section, localFfis447_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep447
end InitE.BackendStages.Metadata
