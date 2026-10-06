import InitE.BackendStages.Metadata.Data330
import InitE.BackendStages.Filtered330
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis330_eq : ffiLines Filtered330.lines = localFfis330 := by
  with_unfolding_all rfl
theorem ffiStep330 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis330) : LabToTarget.findFfiNames (Filtered330 :: rest) = suffixFfis330 := by
  rw [findFfiNames_section, localFfis330_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep330
end InitE.BackendStages.Metadata
