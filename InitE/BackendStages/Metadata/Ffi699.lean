import InitE.BackendStages.Metadata.Data699
import InitE.BackendStages.Filtered699
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis699_eq : ffiLines Filtered699.lines = localFfis699 := by
  with_unfolding_all rfl
theorem ffiStep699 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis699) : LabToTarget.findFfiNames (Filtered699 :: rest) = suffixFfis699 := by
  rw [findFfiNames_section, localFfis699_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep699
end InitE.BackendStages.Metadata
