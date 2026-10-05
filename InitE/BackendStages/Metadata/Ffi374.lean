import InitE.BackendStages.Metadata.Data374
import InitE.BackendStages.Filtered374
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis374_eq : ffiLines Filtered374.lines = localFfis374 := by
  with_unfolding_all rfl
theorem ffiStep374 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis374) : LabToTarget.findFfiNames (Filtered374 :: rest) = suffixFfis374 := by
  rw [findFfiNames_section, localFfis374_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep374
end InitE.BackendStages.Metadata
