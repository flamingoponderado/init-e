import InitE.BackendStages.Metadata.Data784
import InitE.BackendStages.Filtered784
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis784_eq : ffiLines Filtered784.lines = localFfis784 := by
  with_unfolding_all rfl
theorem ffiStep784 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis784) : LabToTarget.findFfiNames (Filtered784 :: rest) = suffixFfis784 := by
  rw [findFfiNames_section, localFfis784_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep784
end InitE.BackendStages.Metadata
