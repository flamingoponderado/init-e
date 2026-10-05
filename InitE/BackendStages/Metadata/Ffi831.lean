import InitE.BackendStages.Metadata.Data831
import InitE.BackendStages.Filtered831
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis831_eq : ffiLines Filtered831.lines = localFfis831 := by
  with_unfolding_all rfl
theorem ffiStep831 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis831) : LabToTarget.findFfiNames (Filtered831 :: rest) = suffixFfis831 := by
  rw [findFfiNames_section, localFfis831_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep831
end InitE.BackendStages.Metadata
