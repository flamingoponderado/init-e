import InitE.BackendStages.Metadata.Data642
import InitE.BackendStages.Filtered642
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis642_eq : ffiLines Filtered642.lines = localFfis642 := by
  with_unfolding_all rfl
theorem ffiStep642 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis642) : LabToTarget.findFfiNames (Filtered642 :: rest) = suffixFfis642 := by
  rw [findFfiNames_section, localFfis642_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep642
end InitE.BackendStages.Metadata
