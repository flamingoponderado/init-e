import InitE.BackendStages.Metadata.Data779
import InitE.BackendStages.Filtered779
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis779_eq : ffiLines Filtered779.lines = localFfis779 := by
  with_unfolding_all rfl
theorem ffiStep779 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis779) : LabToTarget.findFfiNames (Filtered779 :: rest) = suffixFfis779 := by
  rw [findFfiNames_section, localFfis779_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep779
end InitE.BackendStages.Metadata
