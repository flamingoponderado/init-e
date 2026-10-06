import InitE.BackendStages.Metadata.Data719
import InitE.BackendStages.Filtered719
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis719_eq : ffiLines Filtered719.lines = localFfis719 := by
  with_unfolding_all rfl
theorem ffiStep719 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis719) : LabToTarget.findFfiNames (Filtered719 :: rest) = suffixFfis719 := by
  rw [findFfiNames_section, localFfis719_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep719
end InitE.BackendStages.Metadata
