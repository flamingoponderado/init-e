import InitE.BackendStages.Metadata.Data527
import InitE.BackendStages.Filtered527
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis527_eq : ffiLines Filtered527.lines = localFfis527 := by
  with_unfolding_all rfl
theorem ffiStep527 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis527) : LabToTarget.findFfiNames (Filtered527 :: rest) = suffixFfis527 := by
  rw [findFfiNames_section, localFfis527_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep527
end InitE.BackendStages.Metadata
