import InitE.BackendStages.Metadata.Data868
import InitE.BackendStages.Filtered868
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis868_eq : ffiLines Filtered868.lines = localFfis868 := by
  with_unfolding_all rfl
theorem ffiStep868 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis868) : LabToTarget.findFfiNames (Filtered868 :: rest) = suffixFfis868 := by
  rw [findFfiNames_section, localFfis868_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep868
end InitE.BackendStages.Metadata
