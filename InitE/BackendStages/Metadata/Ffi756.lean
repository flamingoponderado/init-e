import InitE.BackendStages.Metadata.Data756
import InitE.BackendStages.Filtered756
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis756_eq : ffiLines Filtered756.lines = localFfis756 := by
  with_unfolding_all rfl
theorem ffiStep756 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis756) : LabToTarget.findFfiNames (Filtered756 :: rest) = suffixFfis756 := by
  rw [findFfiNames_section, localFfis756_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep756
end InitE.BackendStages.Metadata
