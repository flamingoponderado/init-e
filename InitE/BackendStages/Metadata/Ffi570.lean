import InitE.BackendStages.Metadata.Data570
import InitE.BackendStages.Filtered570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis570_eq : ffiLines Filtered570.lines = localFfis570 := by
  with_unfolding_all rfl
theorem ffiStep570 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis570) : LabToTarget.findFfiNames (Filtered570 :: rest) = suffixFfis570 := by
  rw [findFfiNames_section, localFfis570_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep570
end InitE.BackendStages.Metadata
