import InitE.BackendStages.Metadata.Data752
import InitE.BackendStages.Filtered752
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis752_eq : ffiLines Filtered752.lines = localFfis752 := by
  with_unfolding_all rfl
theorem ffiStep752 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis752) : LabToTarget.findFfiNames (Filtered752 :: rest) = suffixFfis752 := by
  rw [findFfiNames_section, localFfis752_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep752
end InitE.BackendStages.Metadata
