import InitE.BackendStages.Metadata.Data504
import InitE.BackendStages.Filtered504
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis504_eq : ffiLines Filtered504.lines = localFfis504 := by
  with_unfolding_all rfl
theorem ffiStep504 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis504) : LabToTarget.findFfiNames (Filtered504 :: rest) = suffixFfis504 := by
  rw [findFfiNames_section, localFfis504_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep504
end InitE.BackendStages.Metadata
