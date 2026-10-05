import InitE.BackendStages.Metadata.Data762
import InitE.BackendStages.Filtered762
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis762_eq : ffiLines Filtered762.lines = localFfis762 := by
  with_unfolding_all rfl
theorem ffiStep762 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis762) : LabToTarget.findFfiNames (Filtered762 :: rest) = suffixFfis762 := by
  rw [findFfiNames_section, localFfis762_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep762
end InitE.BackendStages.Metadata
